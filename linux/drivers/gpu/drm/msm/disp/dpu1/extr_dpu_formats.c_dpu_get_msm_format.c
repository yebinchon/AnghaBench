
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct msm_kms {int dummy; } ;
struct msm_format {int dummy; } ;
struct dpu_format {struct msm_format const base; } ;


 struct dpu_format* dpu_get_dpu_format_ext (int const,int const) ;

const struct msm_format *dpu_get_msm_format(
  struct msm_kms *kms,
  const uint32_t format,
  const uint64_t modifiers)
{
 const struct dpu_format *fmt = dpu_get_dpu_format_ext(format,
   modifiers);
 if (fmt)
  return &fmt->base;
 return ((void*)0);
}
