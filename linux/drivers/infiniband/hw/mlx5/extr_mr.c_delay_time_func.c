
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mlx5_ib_dev {scalar_t__ fill_delay; } ;


 int delay_timer ;
 struct mlx5_ib_dev* dev ;
 struct mlx5_ib_dev* from_timer (int ,struct timer_list*,int ) ;

__attribute__((used)) static void delay_time_func(struct timer_list *t)
{
 struct mlx5_ib_dev *dev = from_timer(dev, t, delay_timer);

 dev->fill_delay = 0;
}
