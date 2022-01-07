
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct scmi_perf_set_level* buf; } ;
struct TYPE_3__ {int poll_completion; } ;
struct scmi_xfer {TYPE_2__ tx; TYPE_1__ hdr; } ;
struct scmi_perf_set_level {void* level; void* domain; } ;
struct scmi_handle {int dummy; } ;


 int PERF_LEVEL_SET ;
 int SCMI_PROTOCOL_PERF ;
 void* cpu_to_le32 (int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int ,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int scmi_perf_mb_level_set(const struct scmi_handle *handle, u32 domain,
      u32 level, bool poll)
{
 int ret;
 struct scmi_xfer *t;
 struct scmi_perf_set_level *lvl;

 ret = scmi_xfer_get_init(handle, PERF_LEVEL_SET, SCMI_PROTOCOL_PERF,
     sizeof(*lvl), 0, &t);
 if (ret)
  return ret;

 t->hdr.poll_completion = poll;
 lvl = t->tx.buf;
 lvl->domain = cpu_to_le32(domain);
 lvl->level = cpu_to_le32(level);

 ret = scmi_do_xfer(handle, t);

 scmi_xfer_put(handle, t);
 return ret;
}
