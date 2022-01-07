
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ SINK_SELF_REFRESH_STATUS; } ;
union psr_sink_psr_status {unsigned char raw; TYPE_3__ bits; } ;
struct TYPE_5__ {scalar_t__ RFB_STORAGE_ERROR; scalar_t__ LINK_CRC_ERROR; } ;
union psr_error_status {unsigned char raw; TYPE_2__ bits; } ;
struct TYPE_4__ {scalar_t__ ENABLE; } ;
union dpcd_psr_configuration {unsigned char raw; TYPE_1__ bits; } ;
struct dc_link {int ctx; int psr_enabled; } ;
typedef int dpcdbuf ;


 scalar_t__ PSR_SINK_STATE_ACTIVE_DISPLAY_FROM_SINK_RFB ;
 int dc_link_set_psr_enable (struct dc_link const*,int,int) ;
 int dm_helpers_dp_read_dpcd (int ,struct dc_link const*,int,unsigned char*,int) ;
 int dm_helpers_dp_write_dpcd (int ,struct dc_link const*,int,unsigned char*,int) ;

__attribute__((used)) static bool handle_hpd_irq_psr_sink(const struct dc_link *link)
{
 union dpcd_psr_configuration psr_configuration;

 if (!link->psr_enabled)
  return 0;

 dm_helpers_dp_read_dpcd(
  link->ctx,
  link,
  368,
  &psr_configuration.raw,
  sizeof(psr_configuration.raw));


 if (psr_configuration.bits.ENABLE) {
  unsigned char dpcdbuf[3] = {0};
  union psr_error_status psr_error_status;
  union psr_sink_psr_status psr_sink_psr_status;

  dm_helpers_dp_read_dpcd(
   link->ctx,
   link,
   0x2006,
   (unsigned char *) dpcdbuf,
   sizeof(dpcdbuf));


  psr_error_status.raw = dpcdbuf[0];

  psr_sink_psr_status.raw = dpcdbuf[2];

  if (psr_error_status.bits.LINK_CRC_ERROR ||
    psr_error_status.bits.RFB_STORAGE_ERROR) {

   dm_helpers_dp_write_dpcd(
    link->ctx,
    link,
    8198,
    &psr_error_status.raw,
    sizeof(psr_error_status.raw));


   dc_link_set_psr_enable(link, 0, 1);
   dc_link_set_psr_enable(link, 1, 1);

   return 1;
  } else if (psr_sink_psr_status.bits.SINK_SELF_REFRESH_STATUS ==
    PSR_SINK_STATE_ACTIVE_DISPLAY_FROM_SINK_RFB){





   return 1;
  }
 }
 return 0;
}
