
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_bios {TYPE_2__ subdev; } ;
struct TYPE_3__ {int dev; } ;


 int ENODEV ;
 void* ERR_PTR (int ) ;
 int nouveau_acpi_rom_supported (int ) ;

__attribute__((used)) static void *
acpi_init(struct nvkm_bios *bios, const char *name)
{
 if (!nouveau_acpi_rom_supported(bios->subdev.device->dev))
  return ERR_PTR(-ENODEV);
 return ((void*)0);
}
