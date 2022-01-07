
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dma_dir; int dev; scalar_t__* alloc_devs; } ;
struct TYPE_4__ {scalar_t__ userptr; } ;
struct vb2_plane {scalar_t__ data_offset; TYPE_1__ m; int length; scalar_t__ bytesused; } ;
struct vb2_buffer {int num_planes; TYPE_3__* planes; scalar_t__ copied_timestamp; struct vb2_queue* vb2_queue; } ;
typedef int planes ;
struct TYPE_5__ {scalar_t__ userptr; } ;
struct TYPE_6__ {int length; TYPE_2__ m; int * mem_priv; scalar_t__ data_offset; scalar_t__ bytesused; int min_length; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int VB2_MAX_PLANES ;
 int buf_cleanup ;
 int buf_init ;
 int buf_prepare ;
 int call_bufop (struct vb2_queue*,int ,struct vb2_buffer*,struct vb2_plane*) ;
 void* call_ptr_memop (struct vb2_buffer*,int ,int ,scalar_t__,int ,int ) ;
 int call_vb_qop (struct vb2_buffer*,int ,struct vb2_buffer*) ;
 int call_void_memop (struct vb2_buffer*,int ,int *) ;
 int call_void_vb_qop (struct vb2_buffer*,int ,struct vb2_buffer*) ;
 int dprintk (int,char*,...) ;
 int fill_vb2_buffer ;
 int get_userptr ;
 int memset (struct vb2_plane*,int ,int) ;
 int put_userptr ;

__attribute__((used)) static int __prepare_userptr(struct vb2_buffer *vb)
{
 struct vb2_plane planes[VB2_MAX_PLANES];
 struct vb2_queue *q = vb->vb2_queue;
 void *mem_priv;
 unsigned int plane;
 int ret = 0;
 bool reacquired = vb->planes[0].mem_priv == ((void*)0);

 memset(planes, 0, sizeof(planes[0]) * vb->num_planes);

 ret = call_bufop(vb->vb2_queue, fill_vb2_buffer,
    vb, planes);
 if (ret)
  return ret;

 for (plane = 0; plane < vb->num_planes; ++plane) {

  if (vb->planes[plane].m.userptr &&
   vb->planes[plane].m.userptr == planes[plane].m.userptr
   && vb->planes[plane].length == planes[plane].length)
   continue;

  dprintk(3, "userspace address for plane %d changed, reacquiring memory\n",
   plane);


  if (planes[plane].length < vb->planes[plane].min_length) {
   dprintk(1, "provided buffer size %u is less than setup size %u for plane %d\n",
      planes[plane].length,
      vb->planes[plane].min_length,
      plane);
   ret = -EINVAL;
   goto err;
  }


  if (vb->planes[plane].mem_priv) {
   if (!reacquired) {
    reacquired = 1;
    vb->copied_timestamp = 0;
    call_void_vb_qop(vb, buf_cleanup, vb);
   }
   call_void_memop(vb, put_userptr, vb->planes[plane].mem_priv);
  }

  vb->planes[plane].mem_priv = ((void*)0);
  vb->planes[plane].bytesused = 0;
  vb->planes[plane].length = 0;
  vb->planes[plane].m.userptr = 0;
  vb->planes[plane].data_offset = 0;


  mem_priv = call_ptr_memop(vb, get_userptr,
    q->alloc_devs[plane] ? : q->dev,
    planes[plane].m.userptr,
    planes[plane].length, q->dma_dir);
  if (IS_ERR(mem_priv)) {
   dprintk(1, "failed acquiring userspace memory for plane %d\n",
    plane);
   ret = PTR_ERR(mem_priv);
   goto err;
  }
  vb->planes[plane].mem_priv = mem_priv;
 }





 for (plane = 0; plane < vb->num_planes; ++plane) {
  vb->planes[plane].bytesused = planes[plane].bytesused;
  vb->planes[plane].length = planes[plane].length;
  vb->planes[plane].m.userptr = planes[plane].m.userptr;
  vb->planes[plane].data_offset = planes[plane].data_offset;
 }

 if (reacquired) {





  ret = call_vb_qop(vb, buf_init, vb);
  if (ret) {
   dprintk(1, "buffer initialization failed\n");
   goto err;
  }
 }

 ret = call_vb_qop(vb, buf_prepare, vb);
 if (ret) {
  dprintk(1, "buffer preparation failed\n");
  call_void_vb_qop(vb, buf_cleanup, vb);
  goto err;
 }

 return 0;
err:

 for (plane = 0; plane < vb->num_planes; ++plane) {
  if (vb->planes[plane].mem_priv)
   call_void_memop(vb, put_userptr,
    vb->planes[plane].mem_priv);
  vb->planes[plane].mem_priv = ((void*)0);
  vb->planes[plane].m.userptr = 0;
  vb->planes[plane].length = 0;
 }

 return ret;
}
