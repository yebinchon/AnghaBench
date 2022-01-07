
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {struct bma150_data* private; } ;
struct bma150_data {int dummy; } ;


 int bma150_open (struct bma150_data*) ;

__attribute__((used)) static void bma150_poll_open(struct input_polled_dev *ipoll_dev)
{
 struct bma150_data *bma150 = ipoll_dev->private;

 bma150_open(bma150);
}
