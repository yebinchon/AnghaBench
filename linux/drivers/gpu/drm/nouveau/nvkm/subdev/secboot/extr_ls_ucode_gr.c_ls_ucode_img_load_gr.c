
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int image_size; } ;
struct ls_ucode_img {TYPE_1__ ucode_desc; int ucode_size; int ucode_data; int sig; int sig_size; } ;
struct firmware {int size; int data; } ;
typedef int f ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kfree (int ) ;
 int kmemdup (int ,int ,int ) ;
 int ls_ucode_img_build (struct firmware const*,struct firmware const*,struct firmware const*,TYPE_1__*) ;
 int nvkm_firmware_get (struct nvkm_subdev const*,char*,struct firmware const**) ;
 int nvkm_firmware_put (struct firmware const*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int
ls_ucode_img_load_gr(const struct nvkm_subdev *subdev, int maxver,
       struct ls_ucode_img *img, const char *falcon_name)
{
 const struct firmware *bl, *code, *data, *sig;
 char f[64];
 int ret;

 snprintf(f, sizeof(f), "gr/%s_bl", falcon_name);
 ret = nvkm_firmware_get(subdev, f, &bl);
 if (ret)
  goto error;

 snprintf(f, sizeof(f), "gr/%s_inst", falcon_name);
 ret = nvkm_firmware_get(subdev, f, &code);
 if (ret)
  goto free_bl;

 snprintf(f, sizeof(f), "gr/%s_data", falcon_name);
 ret = nvkm_firmware_get(subdev, f, &data);
 if (ret)
  goto free_inst;

 snprintf(f, sizeof(f), "gr/%s_sig", falcon_name);
 ret = nvkm_firmware_get(subdev, f, &sig);
 if (ret)
  goto free_data;

 img->sig = kmemdup(sig->data, sig->size, GFP_KERNEL);
 if (!img->sig) {
  ret = -ENOMEM;
  goto free_sig;
 }
 img->sig_size = sig->size;

 img->ucode_data = ls_ucode_img_build(bl, code, data,
          &img->ucode_desc);
 if (IS_ERR(img->ucode_data)) {
  kfree(img->sig);
  ret = PTR_ERR(img->ucode_data);
  goto free_sig;
 }
 img->ucode_size = img->ucode_desc.image_size;

free_sig:
 nvkm_firmware_put(sig);
free_data:
 nvkm_firmware_put(data);
free_inst:
 nvkm_firmware_put(code);
free_bl:
 nvkm_firmware_put(bl);
error:
 return ret;
}
