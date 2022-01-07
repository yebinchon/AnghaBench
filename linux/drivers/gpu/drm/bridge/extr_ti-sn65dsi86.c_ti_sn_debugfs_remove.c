
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sn_bridge {int * debugfs; } ;


 int debugfs_remove_recursive (int *) ;

__attribute__((used)) static void ti_sn_debugfs_remove(struct ti_sn_bridge *pdata)
{
 debugfs_remove_recursive(pdata->debugfs);
 pdata->debugfs = ((void*)0);
}
