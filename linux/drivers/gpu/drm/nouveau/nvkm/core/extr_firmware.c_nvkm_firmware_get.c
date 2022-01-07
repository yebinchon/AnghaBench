
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct firmware {int dummy; } ;


 int nvkm_firmware_get_version (struct nvkm_subdev const*,char const*,int ,int ,struct firmware const**) ;

int
nvkm_firmware_get(const struct nvkm_subdev *subdev, const char *fwname,
    const struct firmware **fw)
{
 return nvkm_firmware_get_version(subdev, fwname, 0, 0, fw);
}
