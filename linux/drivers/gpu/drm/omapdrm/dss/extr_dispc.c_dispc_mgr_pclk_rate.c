
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {unsigned long tv_pclk_rate; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_DIVISORo (int) ;
 int FLD_GET (int ,int,int ) ;
 unsigned long dispc_mgr_lclk_rate (struct dispc_device*,int) ;
 int dispc_read_reg (struct dispc_device*,int ) ;
 scalar_t__ dss_mgr_is_lcd (int) ;

__attribute__((used)) static unsigned long dispc_mgr_pclk_rate(struct dispc_device *dispc,
      enum omap_channel channel)
{
 unsigned long r;

 if (dss_mgr_is_lcd(channel)) {
  int pcd;
  u32 l;

  l = dispc_read_reg(dispc, DISPC_DIVISORo(channel));

  pcd = FLD_GET(l, 7, 0);

  r = dispc_mgr_lclk_rate(dispc, channel);

  return r / pcd;
 } else {
  return dispc->tv_pclk_rate;
 }
}
