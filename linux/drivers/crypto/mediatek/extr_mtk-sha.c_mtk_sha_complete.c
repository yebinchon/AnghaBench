
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_rec {int dummy; } ;
struct mtk_cryp {int dummy; } ;


 int EINPROGRESS ;
 int mtk_sha_finish_req (struct mtk_cryp*,struct mtk_sha_rec*,int) ;
 int mtk_sha_update_start (struct mtk_cryp*,struct mtk_sha_rec*) ;

__attribute__((used)) static void mtk_sha_complete(struct mtk_cryp *cryp,
        struct mtk_sha_rec *sha)
{
 int err = 0;

 err = mtk_sha_update_start(cryp, sha);
 if (err != -EINPROGRESS)
  mtk_sha_finish_req(cryp, sha, err);
}
