
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_MGR_FLD_GO ;
 int mgr_fld_read (struct dispc_device*,int,int ) ;

__attribute__((used)) static bool dispc_mgr_go_busy(struct dispc_device *dispc,
         enum omap_channel channel)
{
 return mgr_fld_read(dispc, channel, DISPC_MGR_FLD_GO) == 1;
}
