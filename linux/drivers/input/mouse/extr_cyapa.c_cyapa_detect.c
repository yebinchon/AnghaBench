
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct cyapa {TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int cyapa_check_is_operational (struct cyapa*) ;
 scalar_t__ cyapa_is_bootloader_mode (struct cyapa*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*) ;

__attribute__((used)) static int cyapa_detect(struct cyapa *cyapa)
{
 struct device *dev = &cyapa->client->dev;
 int error;

 error = cyapa_check_is_operational(cyapa);
 if (error) {
  if (error != -ETIMEDOUT && error != -ENODEV &&
   cyapa_is_bootloader_mode(cyapa)) {
   dev_warn(dev, "device detected but not operational\n");
   return 0;
  }

  dev_err(dev, "no device detected: %d\n", error);
  return error;
 }

 return 0;
}
