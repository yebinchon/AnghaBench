
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct va_format {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;
struct ib_device {TYPE_1__ dev; } ;


 int dev_driver_string (TYPE_1__*) ;
 int dev_name (TYPE_1__*) ;
 int dev_printk_emit (char const,TYPE_1__*,char*,int ,int ,int ,struct va_format*) ;
 int printk (char*,char const*,struct va_format*,...) ;

__attribute__((used)) static void __ibdev_printk(const char *level, const struct ib_device *ibdev,
      struct va_format *vaf)
{
 if (ibdev && ibdev->dev.parent)
  dev_printk_emit(level[1] - '0',
    ibdev->dev.parent,
    "%s %s %s: %pV",
    dev_driver_string(ibdev->dev.parent),
    dev_name(ibdev->dev.parent),
    dev_name(&ibdev->dev),
    vaf);
 else if (ibdev)
  printk("%s%s: %pV",
         level, dev_name(&ibdev->dev), vaf);
 else
  printk("%s(NULL ib_device): %pV", level, vaf);
}
