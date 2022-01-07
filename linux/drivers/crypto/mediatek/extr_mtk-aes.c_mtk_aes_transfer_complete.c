
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cryp {int dummy; } ;
struct mtk_aes_rec {int dummy; } ;


 int mtk_aes_complete (struct mtk_cryp*,struct mtk_aes_rec*,int ) ;

__attribute__((used)) static int mtk_aes_transfer_complete(struct mtk_cryp *cryp,
         struct mtk_aes_rec *aes)
{
 return mtk_aes_complete(cryp, aes, 0);
}
