
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dev; TYPE_1__* chip; } ;
struct firmware {int dummy; } ;
typedef int f ;
typedef int cname ;
struct TYPE_2__ {int name; } ;


 int ENOENT ;
 int firmware_request_nowarn (struct firmware const**,char*,int ) ;
 int nvkm_debug (struct nvkm_subdev const*,char*,char*) ;
 int nvkm_error (struct nvkm_subdev const*,char*,char const*) ;
 int snprintf (char*,int,char*,char*,char const*,...) ;
 int strlen (char*) ;
 int strncpy (char*,int ,int) ;
 char tolower (char) ;

int
nvkm_firmware_get_version(const struct nvkm_subdev *subdev, const char *fwname,
     int min_version, int max_version,
     const struct firmware **fw)
{
 struct nvkm_device *device = subdev->device;
 char f[64];
 char cname[16];
 int i;


 strncpy(cname, device->chip->name, sizeof(cname));
 cname[sizeof(cname) - 1] = '\0';
 i = strlen(cname);
 while (i) {
  --i;
  cname[i] = tolower(cname[i]);
 }

 for (i = max_version; i >= min_version; i--) {
  if (i != 0)
   snprintf(f, sizeof(f), "nvidia/%s/%s-%d.bin", cname, fwname, i);
  else
   snprintf(f, sizeof(f), "nvidia/%s/%s.bin", cname, fwname);

  if (!firmware_request_nowarn(fw, f, device->dev)) {
   nvkm_debug(subdev, "firmware \"%s\" loaded\n", f);
   return i;
  }

  nvkm_debug(subdev, "firmware \"%s\" unavailable\n", f);
 }

 nvkm_error(subdev, "failed to load firmware \"%s\"", fwname);
 return -ENOENT;
}
