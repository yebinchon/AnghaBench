
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mtk_cryp {TYPE_2__** ring; } ;
struct mtk_aes_rec {size_t id; } ;
struct TYPE_4__ {TYPE_1__* res_prev; } ;
struct TYPE_3__ {int ct; } ;


 int AES_AUTH_TAG_ERR ;
 int EBADMSG ;
 int mtk_aes_complete (struct mtk_cryp*,struct mtk_aes_rec*,int ) ;

__attribute__((used)) static int mtk_aes_gcm_tag_verify(struct mtk_cryp *cryp,
      struct mtk_aes_rec *aes)
{
 u32 status = cryp->ring[aes->id]->res_prev->ct;

 return mtk_aes_complete(cryp, aes, (status & AES_AUTH_TAG_ERR) ?
    -EBADMSG : 0);
}
