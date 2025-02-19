
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DSS_CONTROL ;
 int EINVAL ;


 int REG_FLD_MOD (struct dss_device*,int ,int,int,int) ;

__attribute__((used)) static int dss_dpi_select_source_omap4(struct dss_device *dss, int port,
           enum omap_channel channel)
{
 int val;

 switch (channel) {
 case 128:
  val = 0;
  break;
 case 129:
  val = 1;
  break;
 default:
  return -EINVAL;
 }

 REG_FLD_MOD(dss, DSS_CONTROL, val, 17, 17);

 return 0;
}
