
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_request_ctx {int dummy; } ;
struct stm32_hash_dev {int flags; scalar_t__ err; int dev; } ;


 int HASH_CR ;
 int HASH_CR_INIT ;
 int HASH_DIN ;
 int HASH_FLAGS_INIT ;
 int HASH_IMR ;
 int HASH_STR ;
 int pm_runtime_get_sync (int ) ;
 int stm32_hash_write (struct stm32_hash_dev*,int ,int ) ;

__attribute__((used)) static int stm32_hash_hw_init(struct stm32_hash_dev *hdev,
         struct stm32_hash_request_ctx *rctx)
{
 pm_runtime_get_sync(hdev->dev);

 if (!(HASH_FLAGS_INIT & hdev->flags)) {
  stm32_hash_write(hdev, HASH_CR, HASH_CR_INIT);
  stm32_hash_write(hdev, HASH_STR, 0);
  stm32_hash_write(hdev, HASH_DIN, 0);
  stm32_hash_write(hdev, HASH_IMR, 0);
  hdev->err = 0;
 }

 return 0;
}
