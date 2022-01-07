
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {int dispc_channel; TYPE_2__* dss; } ;
struct TYPE_4__ {int mgr_ops_priv; TYPE_1__* mgr_ops; } ;
struct TYPE_3__ {int (* enable ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

int dss_mgr_enable(struct omap_dss_device *dssdev)
{
 return dssdev->dss->mgr_ops->enable(dssdev->dss->mgr_ops_priv,
         dssdev->dispc_channel);
}
