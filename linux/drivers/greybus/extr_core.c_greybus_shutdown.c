
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_host_device {int dummy; } ;
struct device {int dummy; } ;


 int gb_hd_shutdown (struct gb_host_device*) ;
 scalar_t__ is_gb_host_device (struct device*) ;
 struct gb_host_device* to_gb_host_device (struct device*) ;

__attribute__((used)) static void greybus_shutdown(struct device *dev)
{
 if (is_gb_host_device(dev)) {
  struct gb_host_device *hd;

  hd = to_gb_host_device(dev);
  gb_hd_shutdown(hd);
 }
}
