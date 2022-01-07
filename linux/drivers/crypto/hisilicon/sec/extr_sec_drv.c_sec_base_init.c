
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_dev_info {int dummy; } ;
struct platform_device {int dummy; } ;


 int sec_clk_dis (struct sec_dev_info*) ;
 int sec_clk_en (struct sec_dev_info*) ;
 int sec_hw_init (struct sec_dev_info*) ;
 int sec_map_io (struct sec_dev_info*,struct platform_device*) ;
 int sec_reset_whole_module (struct sec_dev_info*) ;

__attribute__((used)) static int sec_base_init(struct sec_dev_info *info,
    struct platform_device *pdev)
{
 int ret;

 ret = sec_map_io(info, pdev);
 if (ret)
  return ret;

 ret = sec_clk_en(info);
 if (ret)
  return ret;

 ret = sec_reset_whole_module(info);
 if (ret)
  goto sec_clk_disable;

 ret = sec_hw_init(info);
 if (ret)
  goto sec_clk_disable;

 return 0;

sec_clk_disable:
 sec_clk_dis(info);

 return ret;
}
