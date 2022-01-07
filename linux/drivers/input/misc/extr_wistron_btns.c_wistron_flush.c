
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int dummy; } ;


 int poll_bios (int) ;

__attribute__((used)) static void wistron_flush(struct input_polled_dev *dev)
{

 poll_bios(1);
}
