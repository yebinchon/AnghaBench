
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_MGR_FLD_STNTFT ;
 int mgr_fld_write (struct dispc_device*,int,int ,int) ;

__attribute__((used)) static void dispc_mgr_set_lcd_type_tft(struct dispc_device *dispc,
           enum omap_channel channel)
{
 mgr_fld_write(dispc, channel, DISPC_MGR_FLD_STNTFT, 1);
}
