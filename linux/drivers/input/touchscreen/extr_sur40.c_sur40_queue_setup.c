
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {unsigned int num_buffers; } ;
struct TYPE_2__ {unsigned int sizeimage; } ;
struct sur40_state {TYPE_1__ pix_fmt; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct sur40_state* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int sur40_queue_setup(struct vb2_queue *q,
         unsigned int *nbuffers, unsigned int *nplanes,
         unsigned int sizes[], struct device *alloc_devs[])
{
 struct sur40_state *sur40 = vb2_get_drv_priv(q);

 if (q->num_buffers + *nbuffers < 3)
  *nbuffers = 3 - q->num_buffers;

 if (*nplanes)
  return sizes[0] < sur40->pix_fmt.sizeimage ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = sur40->pix_fmt.sizeimage;

 return 0;
}
