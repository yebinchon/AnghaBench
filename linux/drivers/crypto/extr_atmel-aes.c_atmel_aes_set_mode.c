
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_reqctx {int mode; } ;
struct atmel_aes_dev {int flags; } ;


 int AES_FLAGS_PERSISTENT ;

__attribute__((used)) static inline void atmel_aes_set_mode(struct atmel_aes_dev *dd,
          const struct atmel_aes_reqctx *rctx)
{

 dd->flags = (dd->flags & AES_FLAGS_PERSISTENT) | rctx->mode;
}
