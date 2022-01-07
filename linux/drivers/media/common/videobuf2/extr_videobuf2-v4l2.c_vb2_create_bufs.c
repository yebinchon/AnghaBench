
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct vb2_queue {int num_buffers; } ;
struct TYPE_15__ {unsigned int buffersize; } ;
struct TYPE_14__ {unsigned int buffersize; } ;
struct TYPE_13__ {unsigned int io_size; } ;
struct TYPE_12__ {unsigned int samples_per_line; unsigned int* count; } ;
struct TYPE_11__ {unsigned int sizeimage; } ;
struct TYPE_10__ {unsigned int num_planes; TYPE_1__* plane_fmt; } ;
struct TYPE_16__ {TYPE_7__ meta; TYPE_6__ sdr; TYPE_5__ sliced; TYPE_4__ vbi; TYPE_3__ pix; TYPE_2__ pix_mp; } ;
struct v4l2_format {int type; TYPE_8__ fmt; } ;
struct v4l2_create_buffers {scalar_t__ count; int memory; int index; int capabilities; struct v4l2_format format; } ;
struct TYPE_9__ {unsigned int sizeimage; } ;


 int EBUSY ;
 int EINVAL ;
 int VIDEO_MAX_PLANES ;
 int fill_buf_caps (struct vb2_queue*,int *) ;
 int vb2_core_create_bufs (struct vb2_queue*,int ,scalar_t__*,unsigned int,unsigned int*) ;
 int vb2_verify_memory_type (struct vb2_queue*,int ,int) ;

int vb2_create_bufs(struct vb2_queue *q, struct v4l2_create_buffers *create)
{
 unsigned requested_planes = 1;
 unsigned requested_sizes[VIDEO_MAX_PLANES];
 struct v4l2_format *f = &create->format;
 int ret = vb2_verify_memory_type(q, create->memory, f->type);
 unsigned i;

 fill_buf_caps(q, &create->capabilities);
 create->index = q->num_buffers;
 if (create->count == 0)
  return ret != -EBUSY ? ret : 0;

 switch (f->type) {
 case 130:
 case 128:
  requested_planes = f->fmt.pix_mp.num_planes;
  if (requested_planes == 0 ||
      requested_planes > VIDEO_MAX_PLANES)
   return -EINVAL;
  for (i = 0; i < requested_planes; i++)
   requested_sizes[i] =
    f->fmt.pix_mp.plane_fmt[i].sizeimage;
  break;
 case 131:
 case 129:
  requested_sizes[0] = f->fmt.pix.sizeimage;
  break;
 case 133:
 case 132:
  requested_sizes[0] = f->fmt.vbi.samples_per_line *
   (f->fmt.vbi.count[0] + f->fmt.vbi.count[1]);
  break;
 case 135:
 case 134:
  requested_sizes[0] = f->fmt.sliced.io_size;
  break;
 case 137:
 case 136:
  requested_sizes[0] = f->fmt.sdr.buffersize;
  break;
 case 139:
 case 138:
  requested_sizes[0] = f->fmt.meta.buffersize;
  break;
 default:
  return -EINVAL;
 }
 for (i = 0; i < requested_planes; i++)
  if (requested_sizes[i] == 0)
   return -EINVAL;
 return ret ? ret : vb2_core_create_bufs(q, create->memory,
  &create->count, requested_planes, requested_sizes);
}
