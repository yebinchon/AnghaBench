
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int * debugfs; } ;


 int debugfs_remove_recursive (int *) ;

void intel_gvt_debugfs_remove_vgpu(struct intel_vgpu *vgpu)
{
 debugfs_remove_recursive(vgpu->debugfs);
 vgpu->debugfs = ((void*)0);
}
