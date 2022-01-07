
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct atmel_aes_dev {TYPE_1__* ctx; } ;
struct TYPE_2__ {int keylen; int key; } ;


 int atmel_aes_write_ctrl_key (struct atmel_aes_dev*,int,int const*,int ,int ) ;

__attribute__((used)) static inline void atmel_aes_write_ctrl(struct atmel_aes_dev *dd, bool use_dma,
     const u32 *iv)

{
 atmel_aes_write_ctrl_key(dd, use_dma, iv,
     dd->ctx->key, dd->ctx->keylen);
}
