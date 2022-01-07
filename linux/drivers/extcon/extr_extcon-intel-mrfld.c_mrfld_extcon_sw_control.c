
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrfld_extcon_data {struct device* dev; } ;
struct device {int dummy; } ;


 int BCOVE_CHGRCTRL0 ;
 unsigned int BCOVE_CHGRCTRL0_SWCONTROL ;
 int dev_err (struct device*,char*,int) ;
 int mrfld_extcon_clear (struct mrfld_extcon_data*,int ,unsigned int) ;
 int mrfld_extcon_set (struct mrfld_extcon_data*,int ,unsigned int) ;

__attribute__((used)) static int mrfld_extcon_sw_control(struct mrfld_extcon_data *data, bool enable)
{
 unsigned int mask = BCOVE_CHGRCTRL0_SWCONTROL;
 struct device *dev = data->dev;
 int ret;

 if (enable)
  ret = mrfld_extcon_set(data, BCOVE_CHGRCTRL0, mask);
 else
  ret = mrfld_extcon_clear(data, BCOVE_CHGRCTRL0, mask);
 if (ret)
  dev_err(dev, "can't set SW control: %d\n", ret);
 return ret;
}
