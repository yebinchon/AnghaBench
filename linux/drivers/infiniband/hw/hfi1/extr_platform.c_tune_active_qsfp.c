
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int* cache; int limiting_active; int reset_needed; } ;
struct hfi1_pportdata {int link_speed_supported; int link_speed_enabled; int dd; TYPE_1__ qsfp_info; } ;


 int OPA_INVALID_INDEX ;
 int OPA_LINK_SPEED_12_5G ;
 int OPA_LINK_SPEED_25G ;
 int PLATFORM_CONFIG_PORT_TABLE ;
 int PORT_TABLE_LOCAL_ATTEN_12G ;
 int PORT_TABLE_LOCAL_ATTEN_25G ;
 int PORT_TABLE_RX_PRESET_IDX ;
 int PORT_TABLE_TX_PRESET_IDX_ACTIVE_EQ ;
 int PORT_TABLE_TX_PRESET_IDX_ACTIVE_NO_EQ ;
 size_t QSFP_EQ_INFO_OFFS ;
 int apply_cdr_settings (struct hfi1_pportdata*,int ,int ) ;
 int apply_eq_settings (struct hfi1_pportdata*,int ,int ) ;
 int apply_rx_amplitude_settings (struct hfi1_pportdata*,int ,int ) ;
 int get_platform_config_field (int ,int ,int ,int ,int *,int) ;
 int qual_bitrate (struct hfi1_pportdata*) ;
 int qual_power (struct hfi1_pportdata*) ;
 int refresh_qsfp_cache (struct hfi1_pportdata*,TYPE_1__*) ;
 int reset_qsfp (struct hfi1_pportdata*) ;
 int set_qsfp_high_power (struct hfi1_pportdata*) ;
 int set_qsfp_tx (struct hfi1_pportdata*,int) ;

__attribute__((used)) static int tune_active_qsfp(struct hfi1_pportdata *ppd, u32 *ptr_tx_preset,
       u32 *ptr_rx_preset, u32 *ptr_total_atten)
{
 int ret;
 u16 lss = ppd->link_speed_supported, lse = ppd->link_speed_enabled;
 u8 *cache = ppd->qsfp_info.cache;

 ppd->qsfp_info.limiting_active = 1;

 ret = set_qsfp_tx(ppd, 0);
 if (ret)
  return ret;

 ret = qual_power(ppd);
 if (ret)
  return ret;

 ret = qual_bitrate(ppd);
 if (ret)
  return ret;






 if (ppd->qsfp_info.reset_needed) {
  ret = reset_qsfp(ppd);
  if (ret)
   return ret;
  refresh_qsfp_cache(ppd, &ppd->qsfp_info);
 } else {
  ppd->qsfp_info.reset_needed = 1;
 }

 ret = set_qsfp_high_power(ppd);
 if (ret)
  return ret;

 if (cache[QSFP_EQ_INFO_OFFS] & 0x4) {
  ret = get_platform_config_field(
   ppd->dd,
   PLATFORM_CONFIG_PORT_TABLE, 0,
   PORT_TABLE_TX_PRESET_IDX_ACTIVE_EQ,
   ptr_tx_preset, 4);
  if (ret) {
   *ptr_tx_preset = OPA_INVALID_INDEX;
   return ret;
  }
 } else {
  ret = get_platform_config_field(
   ppd->dd,
   PLATFORM_CONFIG_PORT_TABLE, 0,
   PORT_TABLE_TX_PRESET_IDX_ACTIVE_NO_EQ,
   ptr_tx_preset, 4);
  if (ret) {
   *ptr_tx_preset = OPA_INVALID_INDEX;
   return ret;
  }
 }

 ret = get_platform_config_field(
  ppd->dd, PLATFORM_CONFIG_PORT_TABLE, 0,
  PORT_TABLE_RX_PRESET_IDX, ptr_rx_preset, 4);
 if (ret) {
  *ptr_rx_preset = OPA_INVALID_INDEX;
  return ret;
 }

 if ((lss & OPA_LINK_SPEED_25G) && (lse & OPA_LINK_SPEED_25G))
  get_platform_config_field(
   ppd->dd, PLATFORM_CONFIG_PORT_TABLE, 0,
   PORT_TABLE_LOCAL_ATTEN_25G, ptr_total_atten, 4);
 else if ((lss & OPA_LINK_SPEED_12_5G) && (lse & OPA_LINK_SPEED_12_5G))
  get_platform_config_field(
   ppd->dd, PLATFORM_CONFIG_PORT_TABLE, 0,
   PORT_TABLE_LOCAL_ATTEN_12G, ptr_total_atten, 4);

 apply_cdr_settings(ppd, *ptr_rx_preset, *ptr_tx_preset);

 apply_eq_settings(ppd, *ptr_rx_preset, *ptr_tx_preset);

 apply_rx_amplitude_settings(ppd, *ptr_rx_preset, *ptr_tx_preset);

 ret = set_qsfp_tx(ppd, 1);

 return ret;
}
