
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int buf; } ;
struct TYPE_3__ {int buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_handle {int dummy; } ;
typedef int __le32 ;


 int CLOCK_RATE_GET ;
 int SCMI_PROTOCOL_CLOCK ;
 int get_unaligned_le64 (int ) ;
 int put_unaligned_le32 (int ,int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int
scmi_clock_rate_get(const struct scmi_handle *handle, u32 clk_id, u64 *value)
{
 int ret;
 struct scmi_xfer *t;

 ret = scmi_xfer_get_init(handle, CLOCK_RATE_GET, SCMI_PROTOCOL_CLOCK,
     sizeof(__le32), sizeof(u64), &t);
 if (ret)
  return ret;

 put_unaligned_le32(clk_id, t->tx.buf);

 ret = scmi_do_xfer(handle, t);
 if (!ret)
  *value = get_unaligned_le64(t->rx.buf);

 scmi_xfer_put(handle, t);
 return ret;
}
