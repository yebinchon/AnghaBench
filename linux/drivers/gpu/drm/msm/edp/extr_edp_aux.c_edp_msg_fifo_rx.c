
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct edp_aux {scalar_t__ base; } ;
struct drm_dp_aux_msg {int size; scalar_t__* buffer; } ;


 int EDP_AUX_DATA_INDEX_WRITE ;
 int EDP_AUX_DATA_READ ;
 scalar_t__ REG_EDP_AUX_DATA ;
 int edp_read (scalar_t__) ;
 int edp_write (scalar_t__,int) ;

__attribute__((used)) static int edp_msg_fifo_rx(struct edp_aux *aux, struct drm_dp_aux_msg *msg)
{
 u32 data;
 u8 *dp;
 int i;
 u32 len = msg->size;

 edp_write(aux->base + REG_EDP_AUX_DATA,
  EDP_AUX_DATA_INDEX_WRITE | EDP_AUX_DATA_READ);

 dp = msg->buffer;


 data = edp_read(aux->base + REG_EDP_AUX_DATA);
 for (i = 0; i < len; i++) {
  data = edp_read(aux->base + REG_EDP_AUX_DATA);
  dp[i] = (u8)((data >> 8) & 0xff);
 }

 return 0;
}
