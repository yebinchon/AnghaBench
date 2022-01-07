
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_secboot {int subdev; } ;
struct ls_ucode_img {int dummy; } ;


 int ls_ucode_img_load_gr (int *,int,struct ls_ucode_img*,char*) ;

int
acr_ls_ucode_load_fecs(const struct nvkm_secboot *sb, int maxver,
         struct ls_ucode_img *img)
{
 return ls_ucode_img_load_gr(&sb->subdev, maxver, img, "fecs");
}
