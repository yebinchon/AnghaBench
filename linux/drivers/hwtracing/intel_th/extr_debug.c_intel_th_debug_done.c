
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int *) ;
 int * intel_th_dbg ;

void intel_th_debug_done(void)
{
 debugfs_remove(intel_th_dbg);
 intel_th_dbg = ((void*)0);
}
