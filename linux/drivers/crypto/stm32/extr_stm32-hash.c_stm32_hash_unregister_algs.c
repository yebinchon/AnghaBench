
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_hash_dev {TYPE_2__* pdata; } ;
struct TYPE_4__ {unsigned int algs_info_size; TYPE_1__* algs_info; } ;
struct TYPE_3__ {unsigned int size; int * algs_list; } ;


 int crypto_unregister_ahash (int *) ;

__attribute__((used)) static int stm32_hash_unregister_algs(struct stm32_hash_dev *hdev)
{
 unsigned int i, j;

 for (i = 0; i < hdev->pdata->algs_info_size; i++) {
  for (j = 0; j < hdev->pdata->algs_info[i].size; j++)
   crypto_unregister_ahash(
    &hdev->pdata->algs_info[i].algs_list[j]);
 }

 return 0;
}
