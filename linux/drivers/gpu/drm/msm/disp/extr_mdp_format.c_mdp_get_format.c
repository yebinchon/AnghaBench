
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct msm_kms {int dummy; } ;
struct msm_format {scalar_t__ pixel_format; } ;
struct mdp_format {struct msm_format const base; } ;


 int ARRAY_SIZE (struct mdp_format*) ;
 struct mdp_format* formats ;

const struct msm_format *mdp_get_format(struct msm_kms *kms, uint32_t format,
  uint64_t modifier)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(formats); i++) {
  const struct mdp_format *f = &formats[i];
  if (f->base.pixel_format == format)
   return &f->base;
 }
 return ((void*)0);
}
