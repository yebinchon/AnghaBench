
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {void* raw; } ;
struct TYPE_16__ {void* raw; } ;
struct TYPE_15__ {void* raw; } ;
struct TYPE_14__ {void* raw; } ;
struct TYPE_13__ {void* raw; } ;
struct TYPE_12__ {void* raw; } ;
struct TYPE_18__ {TYPE_8__ sink_status; TYPE_7__ lane_status_updated; TYPE_6__ lane23_status; TYPE_5__ lane01_status; TYPE_4__ device_service_irq; TYPE_3__ sink_cnt; } ;
union hpd_irq_data {void** raw; TYPE_9__ bytes; } ;
typedef void* uint8_t ;
typedef int tmp ;
struct TYPE_10__ {scalar_t__ raw; } ;
struct TYPE_11__ {TYPE_1__ dpcd_rev; } ;
struct dc_link {TYPE_2__ dpcd_caps; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;


 int DC_OK ;
 scalar_t__ DPCD_REV_14 ;
 int DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0 ;
 int DP_LANE0_1_STATUS_ESI ;
 int DP_LANE2_3_STATUS_ESI ;
 int DP_LANE_ALIGN_STATUS_UPDATED_ESI ;
 int DP_SINK_COUNT ;
 int DP_SINK_COUNT_ESI ;
 int DP_SINK_STATUS_ESI ;
 int core_link_read_dpcd (struct dc_link*,int,void**,int) ;

__attribute__((used)) static enum dc_status read_hpd_rx_irq_data(
 struct dc_link *link,
 union hpd_irq_data *irq_data)
{
 static enum dc_status retval;
 if (link->dpcd_caps.dpcd_rev.raw < DPCD_REV_14)
  retval = core_link_read_dpcd(
   link,
   DP_SINK_COUNT,
   irq_data->raw,
   sizeof(union hpd_irq_data));
 else {



  uint8_t tmp[DP_SINK_STATUS_ESI - DP_SINK_COUNT_ESI + 1];

  retval = core_link_read_dpcd(
   link,
   DP_SINK_COUNT_ESI,
   tmp,
   sizeof(tmp));

  if (retval != DC_OK)
   return retval;

  irq_data->bytes.sink_cnt.raw = tmp[DP_SINK_COUNT_ESI - DP_SINK_COUNT_ESI];
  irq_data->bytes.device_service_irq.raw = tmp[DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0 - DP_SINK_COUNT_ESI];
  irq_data->bytes.lane01_status.raw = tmp[DP_LANE0_1_STATUS_ESI - DP_SINK_COUNT_ESI];
  irq_data->bytes.lane23_status.raw = tmp[DP_LANE2_3_STATUS_ESI - DP_SINK_COUNT_ESI];
  irq_data->bytes.lane_status_updated.raw = tmp[DP_LANE_ALIGN_STATUS_UPDATED_ESI - DP_SINK_COUNT_ESI];
  irq_data->bytes.sink_status.raw = tmp[DP_SINK_STATUS_ESI - DP_SINK_COUNT_ESI];
 }

 return retval;
}
