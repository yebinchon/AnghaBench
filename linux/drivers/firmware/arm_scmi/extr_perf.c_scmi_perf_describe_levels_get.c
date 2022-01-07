
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {struct scmi_msg_resp_perf_describe_levels* buf; } ;
struct TYPE_4__ {struct scmi_msg_perf_describe_levels* buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_opp {scalar_t__ trans_latency_us; void* power; void* perf; } ;
struct scmi_msg_resp_perf_describe_levels {TYPE_3__* opp; int num_remaining; int num_returned; } ;
struct scmi_msg_perf_describe_levels {void* level_index; void* domain; } ;
struct scmi_handle {int dev; } ;
struct perf_dom_info {struct scmi_opp* opp; scalar_t__ opp_count; } ;
struct TYPE_6__ {int transition_latency_us; int power; int perf_val; } ;


 scalar_t__ MAX_OPPS ;
 int PERF_DESCRIBE_LEVELS ;
 int SCMI_PROTOCOL_PERF ;
 void* cpu_to_le32 (scalar_t__) ;
 int dev_dbg (int ,char*,void*,void*,scalar_t__) ;
 int dev_err (int ,char*) ;
 scalar_t__ le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int opp_cmp_func ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int ,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;
 int sort (struct scmi_opp*,scalar_t__,int,int ,int *) ;

__attribute__((used)) static int
scmi_perf_describe_levels_get(const struct scmi_handle *handle, u32 domain,
         struct perf_dom_info *perf_dom)
{
 int ret, cnt;
 u32 tot_opp_cnt = 0;
 u16 num_returned, num_remaining;
 struct scmi_xfer *t;
 struct scmi_opp *opp;
 struct scmi_msg_perf_describe_levels *dom_info;
 struct scmi_msg_resp_perf_describe_levels *level_info;

 ret = scmi_xfer_get_init(handle, PERF_DESCRIBE_LEVELS,
     SCMI_PROTOCOL_PERF, sizeof(*dom_info), 0, &t);
 if (ret)
  return ret;

 dom_info = t->tx.buf;
 level_info = t->rx.buf;

 do {
  dom_info->domain = cpu_to_le32(domain);

  dom_info->level_index = cpu_to_le32(tot_opp_cnt);

  ret = scmi_do_xfer(handle, t);
  if (ret)
   break;

  num_returned = le16_to_cpu(level_info->num_returned);
  num_remaining = le16_to_cpu(level_info->num_remaining);
  if (tot_opp_cnt + num_returned > MAX_OPPS) {
   dev_err(handle->dev, "No. of OPPs exceeded MAX_OPPS");
   break;
  }

  opp = &perf_dom->opp[tot_opp_cnt];
  for (cnt = 0; cnt < num_returned; cnt++, opp++) {
   opp->perf = le32_to_cpu(level_info->opp[cnt].perf_val);
   opp->power = le32_to_cpu(level_info->opp[cnt].power);
   opp->trans_latency_us = le16_to_cpu
    (level_info->opp[cnt].transition_latency_us);

   dev_dbg(handle->dev, "Level %d Power %d Latency %dus\n",
    opp->perf, opp->power, opp->trans_latency_us);
  }

  tot_opp_cnt += num_returned;




 } while (num_returned && num_remaining);

 perf_dom->opp_count = tot_opp_cnt;
 scmi_xfer_put(handle, t);

 sort(perf_dom->opp, tot_opp_cnt, sizeof(*opp), opp_cmp_func, ((void*)0));
 return ret;
}
