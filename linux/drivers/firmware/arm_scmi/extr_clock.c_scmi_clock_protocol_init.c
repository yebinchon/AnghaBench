
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scmi_handle {struct clock_info* clk_priv; int * clk_ops; int dev; } ;
struct scmi_clock_info {int dummy; } ;
struct clock_info {int num_clocks; struct scmi_clock_info* clk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PROTOCOL_REV_MAJOR (int ) ;
 int PROTOCOL_REV_MINOR (int ) ;
 int SCMI_PROTOCOL_CLOCK ;
 int clk_ops ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct scmi_clock_info* devm_kcalloc (int ,int,int,int ) ;
 struct clock_info* devm_kzalloc (int ,int,int ) ;
 int scmi_clock_attributes_get (struct scmi_handle*,int,struct scmi_clock_info*) ;
 int scmi_clock_describe_rates_get (struct scmi_handle*,int,struct scmi_clock_info*) ;
 int scmi_clock_protocol_attributes_get (struct scmi_handle*,struct clock_info*) ;
 int scmi_version_get (struct scmi_handle*,int ,int *) ;

__attribute__((used)) static int scmi_clock_protocol_init(struct scmi_handle *handle)
{
 u32 version;
 int clkid, ret;
 struct clock_info *cinfo;

 scmi_version_get(handle, SCMI_PROTOCOL_CLOCK, &version);

 dev_dbg(handle->dev, "Clock Version %d.%d\n",
  PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));

 cinfo = devm_kzalloc(handle->dev, sizeof(*cinfo), GFP_KERNEL);
 if (!cinfo)
  return -ENOMEM;

 scmi_clock_protocol_attributes_get(handle, cinfo);

 cinfo->clk = devm_kcalloc(handle->dev, cinfo->num_clocks,
      sizeof(*cinfo->clk), GFP_KERNEL);
 if (!cinfo->clk)
  return -ENOMEM;

 for (clkid = 0; clkid < cinfo->num_clocks; clkid++) {
  struct scmi_clock_info *clk = cinfo->clk + clkid;

  ret = scmi_clock_attributes_get(handle, clkid, clk);
  if (!ret)
   scmi_clock_describe_rates_get(handle, clkid, clk);
 }

 handle->clk_ops = &clk_ops;
 handle->clk_priv = cinfo;

 return 0;
}
