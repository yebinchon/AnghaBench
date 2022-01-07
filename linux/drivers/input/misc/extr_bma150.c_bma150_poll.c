
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int private; } ;


 int bma150_report_xyz (int ) ;

__attribute__((used)) static void bma150_poll(struct input_polled_dev *dev)
{
 bma150_report_xyz(dev->private);
}
