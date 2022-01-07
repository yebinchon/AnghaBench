
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_dpm_context {int dpm_context_size; scalar_t__ dpm_context; } ;
struct smu_context {struct smu_dpm_context smu_dpm; } ;
struct smu_11_0_dpm_context {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kzalloc (int,int ) ;

__attribute__((used)) static int navi10_allocate_dpm_context(struct smu_context *smu)
{
 struct smu_dpm_context *smu_dpm = &smu->smu_dpm;

 if (smu_dpm->dpm_context)
  return -EINVAL;

 smu_dpm->dpm_context = kzalloc(sizeof(struct smu_11_0_dpm_context),
           GFP_KERNEL);
 if (!smu_dpm->dpm_context)
  return -ENOMEM;

 smu_dpm->dpm_context_size = sizeof(struct smu_11_0_dpm_context);

 return 0;
}
