
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_dev_info {int dummy; } ;


 int sec_clk_dis (struct sec_dev_info*) ;
 int sec_hw_exit (struct sec_dev_info*) ;

__attribute__((used)) static void sec_base_exit(struct sec_dev_info *info)
{
 sec_hw_exit(info);
 sec_clk_dis(info);
}
