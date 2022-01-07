
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cryp {int dummy; } ;
struct mtk_aes_rec {int (* resume ) (struct mtk_cryp*,struct mtk_aes_rec*) ;struct mtk_cryp* cryp; } ;


 int mtk_aes_unmap (struct mtk_cryp*,struct mtk_aes_rec*) ;
 int stub1 (struct mtk_cryp*,struct mtk_aes_rec*) ;

__attribute__((used)) static void mtk_aes_done_task(unsigned long data)
{
 struct mtk_aes_rec *aes = (struct mtk_aes_rec *)data;
 struct mtk_cryp *cryp = aes->cryp;

 mtk_aes_unmap(cryp, aes);
 aes->resume(cryp, aes);
}
