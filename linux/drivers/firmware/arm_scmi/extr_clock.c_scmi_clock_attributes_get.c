
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct scmi_msg_resp_clock_attributes* buf; } ;
struct TYPE_4__ {int buf; } ;
struct scmi_xfer {TYPE_1__ rx; TYPE_2__ tx; } ;
struct scmi_msg_resp_clock_attributes {int name; } ;
struct scmi_handle {int dummy; } ;
struct scmi_clock_info {char* name; } ;
typedef int clk_id ;


 int CLOCK_ATTRIBUTES ;
 int SCMI_MAX_STR_SIZE ;
 int SCMI_PROTOCOL_CLOCK ;
 int put_unaligned_le32 (int ,int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;
 int strlcpy (char*,int ,int ) ;

__attribute__((used)) static int scmi_clock_attributes_get(const struct scmi_handle *handle,
         u32 clk_id, struct scmi_clock_info *clk)
{
 int ret;
 struct scmi_xfer *t;
 struct scmi_msg_resp_clock_attributes *attr;

 ret = scmi_xfer_get_init(handle, CLOCK_ATTRIBUTES, SCMI_PROTOCOL_CLOCK,
     sizeof(clk_id), sizeof(*attr), &t);
 if (ret)
  return ret;

 put_unaligned_le32(clk_id, t->tx.buf);
 attr = t->rx.buf;

 ret = scmi_do_xfer(handle, t);
 if (!ret)
  strlcpy(clk->name, attr->name, SCMI_MAX_STR_SIZE);
 else
  clk->name[0] = '\0';

 scmi_xfer_put(handle, t);
 return ret;
}
