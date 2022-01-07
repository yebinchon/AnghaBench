
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct scmi_perf_get_limits* buf; } ;
struct TYPE_4__ {int buf; } ;
struct scmi_xfer {TYPE_1__ rx; TYPE_2__ tx; } ;
struct scmi_perf_get_limits {int min_level; int max_level; } ;
struct scmi_handle {int dummy; } ;
typedef int __le32 ;


 int PERF_LIMITS_GET ;
 int SCMI_PROTOCOL_PERF ;
 int le32_to_cpu (int ) ;
 int put_unaligned_le32 (int ,int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int ,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int scmi_perf_mb_limits_get(const struct scmi_handle *handle, u32 domain,
       u32 *max_perf, u32 *min_perf)
{
 int ret;
 struct scmi_xfer *t;
 struct scmi_perf_get_limits *limits;

 ret = scmi_xfer_get_init(handle, PERF_LIMITS_GET, SCMI_PROTOCOL_PERF,
     sizeof(__le32), 0, &t);
 if (ret)
  return ret;

 put_unaligned_le32(domain, t->tx.buf);

 ret = scmi_do_xfer(handle, t);
 if (!ret) {
  limits = t->rx.buf;

  *max_perf = le32_to_cpu(limits->max_level);
  *min_perf = le32_to_cpu(limits->min_level);
 }

 scmi_xfer_put(handle, t);
 return ret;
}
