
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int * mgr_ops_priv; int * mgr_ops; } ;



void dss_uninstall_mgr_ops(struct dss_device *dss)
{
 dss->mgr_ops = ((void*)0);
 dss->mgr_ops_priv = ((void*)0);
}
