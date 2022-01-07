
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int dummy; } ;


 int reset_control_assert (struct reset_control*) ;
 int reset_control_deassert (struct reset_control*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rockchip_saradc_reset_controller(struct reset_control *reset)
{
 reset_control_assert(reset);
 usleep_range(10, 20);
 reset_control_deassert(reset);
}
