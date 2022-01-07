
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgem_file {int fence_idr; int fence_mutex; } ;


 int idr_init (int *) ;
 int mutex_init (int *) ;

int vgem_fence_open(struct vgem_file *vfile)
{
 mutex_init(&vfile->fence_mutex);
 idr_init(&vfile->fence_idr);

 return 0;
}
