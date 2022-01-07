
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_dev {int dummy; } ;


 int stm32_hash_update_cpu (struct stm32_hash_dev*) ;

__attribute__((used)) static int stm32_hash_update_req(struct stm32_hash_dev *hdev)
{
 return stm32_hash_update_cpu(hdev);
}
