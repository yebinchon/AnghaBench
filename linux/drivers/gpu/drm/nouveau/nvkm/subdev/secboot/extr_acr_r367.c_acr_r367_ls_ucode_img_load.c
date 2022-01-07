
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_secboot {int dummy; } ;
struct ls_ucode_img {int falcon_id; int sig_size; struct ls_ucode_img_r367* sig; struct ls_ucode_img_r367* ucode_data; } ;
struct TYPE_8__ {int falcon_id; } ;
struct TYPE_7__ {TYPE_4__ signature; } ;
struct ls_ucode_img_r367 {struct ls_ucode_img base; TYPE_3__ lsb_header; int func; } ;
struct acr_r352_ls_func {int (* load ) (struct nvkm_secboot const*,int ,struct ls_ucode_img*) ;int * version; int version_max; } ;
struct TYPE_5__ {struct nvkm_subdev* subdev; } ;
struct acr_r352 {TYPE_2__* func; TYPE_1__ base; } ;
typedef enum nvkm_secboot_falcon { ____Placeholder_nvkm_secboot_falcon } nvkm_secboot_falcon ;
struct TYPE_6__ {struct acr_r352_ls_func** ls_func; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ls_ucode_img* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct ls_ucode_img_r367*) ;
 struct ls_ucode_img_r367* kzalloc (int,int ) ;
 int memcpy (TYPE_4__*,struct ls_ucode_img_r367*,int) ;
 int nvkm_error (struct nvkm_subdev const*,char*,int ) ;
 int * nvkm_secboot_falcon_name ;
 int stub1 (struct nvkm_secboot const*,int ,struct ls_ucode_img*) ;

struct ls_ucode_img *
acr_r367_ls_ucode_img_load(const struct acr_r352 *acr,
      const struct nvkm_secboot *sb,
      enum nvkm_secboot_falcon falcon_id)
{
 const struct nvkm_subdev *subdev = acr->base.subdev;
 const struct acr_r352_ls_func *func = acr->func->ls_func[falcon_id];
 struct ls_ucode_img_r367 *img;
 int ret;

 img = kzalloc(sizeof(*img), GFP_KERNEL);
 if (!img)
  return ERR_PTR(-ENOMEM);

 img->base.falcon_id = falcon_id;

 ret = func->load(sb, func->version_max, &img->base);
 if (ret < 0) {
  kfree(img->base.ucode_data);
  kfree(img->base.sig);
  kfree(img);
  return ERR_PTR(ret);
 }

 img->func = func->version[ret];


 if (img->base.sig_size != sizeof(img->lsb_header.signature)) {
  nvkm_error(subdev, "invalid signature size for %s falcon!\n",
      nvkm_secboot_falcon_name[falcon_id]);
  return ERR_PTR(-EINVAL);
 }


 memcpy(&img->lsb_header.signature, img->base.sig, img->base.sig_size);


 img->lsb_header.signature.falcon_id = falcon_id;

 return &img->base;
}
