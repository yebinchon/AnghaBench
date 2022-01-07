
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp55xx_chip {TYPE_1__* cl; } ;
struct device {int dummy; } ;
struct TYPE_2__ {char* name; struct device dev; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 int lp55xx_firmware_loaded ;
 int request_firmware_nowait (int ,int,char const*,struct device*,int ,struct lp55xx_chip*,int ) ;

__attribute__((used)) static int lp55xx_request_firmware(struct lp55xx_chip *chip)
{
 const char *name = chip->cl->name;
 struct device *dev = &chip->cl->dev;

 return request_firmware_nowait(THIS_MODULE, 0, name, dev,
    GFP_KERNEL, chip, lp55xx_firmware_loaded);
}
