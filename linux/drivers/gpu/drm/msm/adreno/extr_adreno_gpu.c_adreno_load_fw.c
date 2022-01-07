
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct adreno_gpu {struct firmware const** fw; TYPE_1__* info; } ;
struct TYPE_2__ {int * fw; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (struct firmware const*) ;
 int PTR_ERR (struct firmware const*) ;
 struct firmware* adreno_request_fw (struct adreno_gpu*,int ) ;

int adreno_load_fw(struct adreno_gpu *adreno_gpu)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(adreno_gpu->info->fw); i++) {
  const struct firmware *fw;

  if (!adreno_gpu->info->fw[i])
   continue;


  if (adreno_gpu->fw[i])
   continue;

  fw = adreno_request_fw(adreno_gpu, adreno_gpu->info->fw[i]);
  if (IS_ERR(fw))
   return PTR_ERR(fw);

  adreno_gpu->fw[i] = fw;
 }

 return 0;
}
