
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int * debugfs_root; } ;


 int debugfs_remove_recursive (int *) ;

void intel_gvt_debugfs_clean(struct intel_gvt *gvt)
{
 debugfs_remove_recursive(gvt->debugfs_root);
 gvt->debugfs_root = ((void*)0);
}
