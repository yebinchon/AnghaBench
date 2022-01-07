
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_cryp {int sha_list; } ;
struct TYPE_2__ {int lock; } ;


 int list_del (int *) ;
 TYPE_1__ mtk_sha ;
 int mtk_sha_record_free (struct mtk_cryp*) ;
 int mtk_sha_unregister_algs () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mtk_hash_alg_release(struct mtk_cryp *cryp)
{
 spin_lock(&mtk_sha.lock);
 list_del(&cryp->sha_list);
 spin_unlock(&mtk_sha.lock);

 mtk_sha_unregister_algs();
 mtk_sha_record_free(cryp);
}
