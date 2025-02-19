
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct firmware {size_t size; int data; } ;


 int EINVAL ;
 int ENOMEM ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 void* kmemdup (int ,size_t,int ) ;
 int nvkm_error (struct nvkm_subdev const*,char*,char const*,size_t) ;
 int nvkm_firmware_get (struct nvkm_subdev const*,char const*,struct firmware const**) ;
 int nvkm_firmware_put (struct firmware const*) ;

void *
nvkm_acr_load_firmware(const struct nvkm_subdev *subdev, const char *name,
         size_t min_size)
{
 const struct firmware *fw;
 void *blob;
 int ret;

 ret = nvkm_firmware_get(subdev, name, &fw);
 if (ret)
  return ERR_PTR(ret);
 if (fw->size < min_size) {
  nvkm_error(subdev, "%s is smaller than expected size %zu\n",
      name, min_size);
  nvkm_firmware_put(fw);
  return ERR_PTR(-EINVAL);
 }
 blob = kmemdup(fw->data, fw->size, GFP_KERNEL);
 nvkm_firmware_put(fw);
 if (!blob)
  return ERR_PTR(-ENOMEM);

 return blob;
}
