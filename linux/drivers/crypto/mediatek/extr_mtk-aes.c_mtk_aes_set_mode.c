
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_aes_reqctx {int mode; } ;
struct mtk_aes_rec {int flags; } ;


 int AES_FLAGS_BUSY ;

__attribute__((used)) static inline void mtk_aes_set_mode(struct mtk_aes_rec *aes,
        const struct mtk_aes_reqctx *rctx)
{

 aes->flags = (aes->flags & AES_FLAGS_BUSY) | rctx->mode;
}
