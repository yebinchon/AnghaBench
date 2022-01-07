
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_rec {struct mtk_cryp* cryp; } ;
struct mtk_cryp {int dummy; } ;


 int mtk_sha_complete (struct mtk_cryp*,struct mtk_sha_rec*) ;
 int mtk_sha_unmap (struct mtk_cryp*,struct mtk_sha_rec*) ;

__attribute__((used)) static void mtk_sha_done_task(unsigned long data)
{
 struct mtk_sha_rec *sha = (struct mtk_sha_rec *)data;
 struct mtk_cryp *cryp = sha->cryp;

 mtk_sha_unmap(cryp, sha);
 mtk_sha_complete(cryp, sha);
}
