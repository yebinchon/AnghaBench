
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgem_file {int fence_idr; } ;


 int __vgem_fence_idr_fini ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,struct vgem_file*) ;

void vgem_fence_close(struct vgem_file *vfile)
{
 idr_for_each(&vfile->fence_idr, __vgem_fence_idr_fini, vfile);
 idr_destroy(&vfile->fence_idr);
}
