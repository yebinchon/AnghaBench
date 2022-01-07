
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct scmi_clock_set_config* buf; } ;
struct scmi_xfer {TYPE_1__ tx; } ;
struct scmi_handle {int dummy; } ;
struct scmi_clock_set_config {void* attributes; void* id; } ;


 int CLOCK_CONFIG_SET ;
 int SCMI_PROTOCOL_CLOCK ;
 void* cpu_to_le32 (int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int ,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int
scmi_clock_config_set(const struct scmi_handle *handle, u32 clk_id, u32 config)
{
 int ret;
 struct scmi_xfer *t;
 struct scmi_clock_set_config *cfg;

 ret = scmi_xfer_get_init(handle, CLOCK_CONFIG_SET, SCMI_PROTOCOL_CLOCK,
     sizeof(*cfg), 0, &t);
 if (ret)
  return ret;

 cfg = t->tx.buf;
 cfg->id = cpu_to_le32(clk_id);
 cfg->attributes = cpu_to_le32(config);

 ret = scmi_do_xfer(handle, t);

 scmi_xfer_put(handle, t);
 return ret;
}
