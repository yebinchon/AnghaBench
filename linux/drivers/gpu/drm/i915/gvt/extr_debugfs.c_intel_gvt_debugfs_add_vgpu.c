
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {int id; int debugfs; int active; TYPE_1__* gvt; } ;
struct TYPE_2__ {int debugfs_root; } ;


 int debugfs_create_bool (char*,int,int ,int *) ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct intel_vgpu*,int *) ;
 int snprintf (char*,int,char*,int) ;
 int vgpu_mmio_diff_fops ;
 int vgpu_scan_nonprivbb_fops ;

void intel_gvt_debugfs_add_vgpu(struct intel_vgpu *vgpu)
{
 char name[16] = "";

 snprintf(name, 16, "vgpu%d", vgpu->id);
 vgpu->debugfs = debugfs_create_dir(name, vgpu->gvt->debugfs_root);

 debugfs_create_bool("active", 0444, vgpu->debugfs, &vgpu->active);
 debugfs_create_file("mmio_diff", 0444, vgpu->debugfs, vgpu,
       &vgpu_mmio_diff_fops);
 debugfs_create_file("scan_nonprivbb", 0644, vgpu->debugfs, vgpu,
       &vgpu_scan_nonprivbb_fops);
}
