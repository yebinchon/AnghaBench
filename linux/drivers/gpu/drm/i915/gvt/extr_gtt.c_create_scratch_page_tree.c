
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int GTT_TYPE_MAX ;
 int GTT_TYPE_PPGTT_PTE_PT ;
 int alloc_scratch_pages (struct intel_vgpu*,int) ;
 int release_scratch_page_tree (struct intel_vgpu*) ;

__attribute__((used)) static int create_scratch_page_tree(struct intel_vgpu *vgpu)
{
 int i, ret;

 for (i = GTT_TYPE_PPGTT_PTE_PT; i < GTT_TYPE_MAX; i++) {
  ret = alloc_scratch_pages(vgpu, i);
  if (ret)
   goto err;
 }

 return 0;

err:
 release_scratch_page_tree(vgpu);
 return ret;
}
