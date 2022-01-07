
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stedma40_half_channel_info {int psize; int flow_ctrl; } ;
struct d40_chan {int dummy; } ;


 int STEDMA40_NO_FLOW_CTRL ;
 int STEDMA40_PSIZE_LOG_1 ;
 int STEDMA40_PSIZE_LOG_16 ;
 int STEDMA40_PSIZE_LOG_4 ;
 int STEDMA40_PSIZE_LOG_8 ;
 int STEDMA40_PSIZE_PHY_1 ;
 int STEDMA40_PSIZE_PHY_16 ;
 int STEDMA40_PSIZE_PHY_4 ;
 int STEDMA40_PSIZE_PHY_8 ;
 scalar_t__ chan_is_logical (struct d40_chan*) ;

__attribute__((used)) static int
dma40_config_to_halfchannel(struct d40_chan *d40c,
       struct stedma40_half_channel_info *info,
       u32 maxburst)
{
 int psize;

 if (chan_is_logical(d40c)) {
  if (maxburst >= 16)
   psize = STEDMA40_PSIZE_LOG_16;
  else if (maxburst >= 8)
   psize = STEDMA40_PSIZE_LOG_8;
  else if (maxburst >= 4)
   psize = STEDMA40_PSIZE_LOG_4;
  else
   psize = STEDMA40_PSIZE_LOG_1;
 } else {
  if (maxburst >= 16)
   psize = STEDMA40_PSIZE_PHY_16;
  else if (maxburst >= 8)
   psize = STEDMA40_PSIZE_PHY_8;
  else if (maxburst >= 4)
   psize = STEDMA40_PSIZE_PHY_4;
  else
   psize = STEDMA40_PSIZE_PHY_1;
 }

 info->psize = psize;
 info->flow_ctrl = STEDMA40_NO_FLOW_CTRL;

 return 0;
}
