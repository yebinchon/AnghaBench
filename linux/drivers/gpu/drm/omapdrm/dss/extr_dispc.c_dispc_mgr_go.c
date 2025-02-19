
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispc_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int name; } ;


 int DISPC_MGR_FLD_GO ;
 int DSSDBG (char*,int ) ;
 int WARN_ON (int) ;
 int dispc_mgr_go_busy (struct dispc_device*,int) ;
 int dispc_mgr_is_enabled (struct dispc_device*,int) ;
 TYPE_1__* mgr_desc ;
 int mgr_fld_write (struct dispc_device*,int,int ,int) ;

__attribute__((used)) static void dispc_mgr_go(struct dispc_device *dispc, enum omap_channel channel)
{
 WARN_ON(!dispc_mgr_is_enabled(dispc, channel));
 WARN_ON(dispc_mgr_go_busy(dispc, channel));

 DSSDBG("GO %s\n", mgr_desc[channel].name);

 mgr_fld_write(dispc, channel, DISPC_MGR_FLD_GO, 1);
}
