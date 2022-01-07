
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dispc_channel; struct dss_device* dss; } ;
struct dss_device {int mgr_ops_priv; TYPE_1__* mgr_ops; } ;
struct TYPE_2__ {int (* register_framedone_handler ) (int ,int ,void (*) (void*),void*) ;} ;


 int stub1 (int ,int ,void (*) (void*),void*) ;

int dss_mgr_register_framedone_handler(struct omap_dss_device *dssdev,
  void (*handler)(void *), void *data)
{
 struct dss_device *dss = dssdev->dss;

 return dss->mgr_ops->register_framedone_handler(dss->mgr_ops_priv,
       dssdev->dispc_channel,
       handler, data);
}
