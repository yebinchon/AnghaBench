
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int dummy; } ;


 int kfree (struct ipack_device*) ;

__attribute__((used)) static void tpci200_release_device(struct ipack_device *dev)
{
 kfree(dev);
}
