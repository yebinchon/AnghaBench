
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_dp_device {int rst; } ;


 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rockchip_dp_pre_init(struct rockchip_dp_device *dp)
{
 reset_control_assert(dp->rst);
 usleep_range(10, 20);
 reset_control_deassert(dp->rst);

 return 0;
}
