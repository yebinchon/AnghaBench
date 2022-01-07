
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int buf; } ;
struct TYPE_6__ {int buf; } ;
struct TYPE_5__ {int poll_completion; } ;
struct scmi_xfer {TYPE_1__ rx; TYPE_3__ tx; TYPE_2__ hdr; } ;
struct scmi_handle {int dummy; } ;


 int PERF_LEVEL_GET ;
 int SCMI_PROTOCOL_PERF ;
 int get_unaligned_le32 (int ) ;
 int put_unaligned_le32 (int ,int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int scmi_perf_mb_level_get(const struct scmi_handle *handle, u32 domain,
      u32 *level, bool poll)
{
 int ret;
 struct scmi_xfer *t;

 ret = scmi_xfer_get_init(handle, PERF_LEVEL_GET, SCMI_PROTOCOL_PERF,
     sizeof(u32), sizeof(u32), &t);
 if (ret)
  return ret;

 t->hdr.poll_completion = poll;
 put_unaligned_le32(domain, t->tx.buf);

 ret = scmi_do_xfer(handle, t);
 if (!ret)
  *level = get_unaligned_le32(t->rx.buf);

 scmi_xfer_put(handle, t);
 return ret;
}
