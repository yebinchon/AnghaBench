
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_controller {struct hsi_controller* port; } ;
struct device {int dummy; } ;


 int kfree (struct hsi_controller*) ;
 struct hsi_controller* to_hsi_controller (struct device*) ;

__attribute__((used)) static void hsi_controller_release(struct device *dev)
{
 struct hsi_controller *hsi = to_hsi_controller(dev);

 kfree(hsi->port);
 kfree(hsi);
}
