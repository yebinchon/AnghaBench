
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int * debugfs_create_dir (char*,int *) ;
 int * intel_th_dbg ;

void intel_th_debug_init(void)
{
 intel_th_dbg = debugfs_create_dir("intel_th", ((void*)0));
 if (IS_ERR(intel_th_dbg))
  intel_th_dbg = ((void*)0);
}
