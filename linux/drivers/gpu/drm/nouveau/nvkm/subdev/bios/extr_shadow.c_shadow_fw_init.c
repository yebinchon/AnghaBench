
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_bios {TYPE_2__ subdev; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; } ;


 int ENOENT ;
 void* ERR_PTR (int ) ;
 int request_firmware (struct firmware const**,char const*,struct device*) ;

__attribute__((used)) static void *
shadow_fw_init(struct nvkm_bios *bios, const char *name)
{
 struct device *dev = bios->subdev.device->dev;
 const struct firmware *fw;
 int ret = request_firmware(&fw, name, dev);
 if (ret)
  return ERR_PTR(-ENOENT);
 return (void *)fw;
}
