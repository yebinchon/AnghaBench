
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int io_modes; int num_buffers; struct vb2_fileio_data* fileio; int type; TYPE_3__** bufs; int fileio_write_immediately; int fileio_read_once; scalar_t__ streaming; TYPE_1__* mem_ops; } ;
struct vb2_fileio_data {unsigned int count; int initial_index; int cur_index; int memory; TYPE_2__* bufs; int type; int write_immediately; int read_once; } ;
struct TYPE_7__ {int num_planes; } ;
struct TYPE_6__ {int queued; int size; int * vaddr; } ;
struct TYPE_5__ {int vaddr; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VB2_MEMORY_MMAP ;
 int VB2_READ ;
 int VB2_WRITE ;
 scalar_t__ WARN_ON (int) ;
 int dprintk (int,char*,char*,unsigned int,int ,int ) ;
 int kfree (struct vb2_fileio_data*) ;
 struct vb2_fileio_data* kzalloc (int,int ) ;
 int vb2_core_qbuf (struct vb2_queue*,int,int *,int *) ;
 int vb2_core_reqbufs (struct vb2_queue*,int ,unsigned int*) ;
 int vb2_core_streamon (struct vb2_queue*,int ) ;
 int vb2_plane_size (TYPE_3__*,int ) ;
 int * vb2_plane_vaddr (TYPE_3__*,int ) ;

__attribute__((used)) static int __vb2_init_fileio(struct vb2_queue *q, int read)
{
 struct vb2_fileio_data *fileio;
 int i, ret;
 unsigned int count = 0;




 if (WARN_ON((read && !(q->io_modes & VB2_READ)) ||
      (!read && !(q->io_modes & VB2_WRITE))))
  return -EINVAL;




 if (!q->mem_ops->vaddr)
  return -EBUSY;




 if (q->streaming || q->num_buffers > 0)
  return -EBUSY;




 count = 1;

 dprintk(3, "setting up file io: mode %s, count %d, read_once %d, write_immediately %d\n",
  (read) ? "read" : "write", count, q->fileio_read_once,
  q->fileio_write_immediately);

 fileio = kzalloc(sizeof(*fileio), GFP_KERNEL);
 if (fileio == ((void*)0))
  return -ENOMEM;

 fileio->read_once = q->fileio_read_once;
 fileio->write_immediately = q->fileio_write_immediately;





 fileio->count = count;
 fileio->memory = VB2_MEMORY_MMAP;
 fileio->type = q->type;
 q->fileio = fileio;
 ret = vb2_core_reqbufs(q, fileio->memory, &fileio->count);
 if (ret)
  goto err_kfree;





 if (q->bufs[0]->num_planes != 1) {
  ret = -EBUSY;
  goto err_reqbufs;
 }




 for (i = 0; i < q->num_buffers; i++) {
  fileio->bufs[i].vaddr = vb2_plane_vaddr(q->bufs[i], 0);
  if (fileio->bufs[i].vaddr == ((void*)0)) {
   ret = -EINVAL;
   goto err_reqbufs;
  }
  fileio->bufs[i].size = vb2_plane_size(q->bufs[i], 0);
 }




 if (read) {



  for (i = 0; i < q->num_buffers; i++) {
   ret = vb2_core_qbuf(q, i, ((void*)0), ((void*)0));
   if (ret)
    goto err_reqbufs;
   fileio->bufs[i].queued = 1;
  }




  fileio->initial_index = q->num_buffers;
  fileio->cur_index = q->num_buffers;
 }




 ret = vb2_core_streamon(q, q->type);
 if (ret)
  goto err_reqbufs;

 return ret;

err_reqbufs:
 fileio->count = 0;
 vb2_core_reqbufs(q, fileio->memory, &fileio->count);

err_kfree:
 q->fileio = ((void*)0);
 kfree(fileio);
 return ret;
}
