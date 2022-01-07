
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shadow {int member_0; scalar_t__ score; scalar_t__ skip; char* data; int size; TYPE_1__* func; int * member_1; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int cfgopt; } ;
struct nvkm_bios {char* data; int size; struct nvkm_subdev subdev; } ;
struct TYPE_2__ {char* name; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrndup (char const*,int,int ) ;
 int nvbios_acpi_fast ;
 int nvbios_acpi_slow ;
 int nvbios_of ;
 int nvbios_pcirom ;
 int nvbios_platform ;
 int nvbios_ramin ;
 int nvbios_rom ;
 int nvkm_debug (struct nvkm_subdev*,char*,char*) ;
 int nvkm_error (struct nvkm_subdev*,char*,...) ;
 char* nvkm_stropt (int ,char*,int*) ;
 TYPE_1__ shadow_fw ;
 scalar_t__ shadow_method (struct nvkm_bios*,struct shadow*,char*) ;
 int strcasecmp (char*,char*) ;

int
nvbios_shadow(struct nvkm_bios *bios)
{
 struct nvkm_subdev *subdev = &bios->subdev;
 struct nvkm_device *device = subdev->device;
 struct shadow mthds[] = {
  { 0, &nvbios_of },
  { 0, &nvbios_ramin },
  { 0, &nvbios_rom },
  { 0, &nvbios_acpi_fast },
  { 4, &nvbios_acpi_slow },
  { 1, &nvbios_pcirom },
  { 1, &nvbios_platform },
  {}
 }, *mthd, *best = ((void*)0);
 const char *optarg;
 char *source;
 int optlen;


 optarg = nvkm_stropt(device->cfgopt, "NvBios", &optlen);
 source = optarg ? kstrndup(optarg, optlen, GFP_KERNEL) : ((void*)0);
 if (source) {

  for (mthd = mthds; mthd->func; mthd++) {
   if (mthd->func->name &&
       !strcasecmp(source, mthd->func->name)) {
    best = mthd;
    if (shadow_method(bios, mthd, ((void*)0)))
     break;
   }
  }


  if (!best && (best = mthd)) {
   mthd->func = &shadow_fw;
   shadow_method(bios, mthd, source);
   mthd->func = ((void*)0);
  }

  if (!best->score) {
   nvkm_error(subdev, "%s invalid\n", source);
   kfree(source);
   source = ((void*)0);
  }
 }


 if (!best || !best->score) {
  for (mthd = mthds, best = mthd; mthd->func; mthd++) {
   if (!mthd->skip || best->score < mthd->skip) {
    if (shadow_method(bios, mthd, ((void*)0))) {
     if (mthd->score > best->score)
      best = mthd;
    }
   }
  }
 }


 for (mthd = mthds; mthd->func; mthd++) {
  if (mthd != best)
   kfree(mthd->data);
 }

 if (!best->score) {
  nvkm_error(subdev, "unable to locate usable image\n");
  return -EINVAL;
 }

 nvkm_debug(subdev, "using image from %s\n", best->func ?
     best->func->name : source);
 bios->data = best->data;
 bios->size = best->size;
 kfree(source);
 return 0;
}
