
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {int dummy; } ;


 int DP_MSTM_CTRL ;
 unsigned char DP_MST_EN ;
 int core_link_read_dpcd (struct dc_link*,int ,unsigned char*,int) ;
 int core_link_write_dpcd (struct dc_link*,int ,unsigned char*,int) ;

void dp_enable_mst_on_sink(struct dc_link *link, bool enable)
{
 unsigned char mstmCntl;

 core_link_read_dpcd(link, DP_MSTM_CTRL, &mstmCntl, 1);
 if (enable)
  mstmCntl |= DP_MST_EN;
 else
  mstmCntl &= (~DP_MST_EN);

 core_link_write_dpcd(link, DP_MSTM_CTRL, &mstmCntl, 1);
}
