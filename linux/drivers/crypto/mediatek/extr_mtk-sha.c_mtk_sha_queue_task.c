
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_rec {scalar_t__ id; int cryp; } ;


 scalar_t__ MTK_RING2 ;
 int mtk_sha_handle_queue (int ,scalar_t__,int *) ;

__attribute__((used)) static void mtk_sha_queue_task(unsigned long data)
{
 struct mtk_sha_rec *sha = (struct mtk_sha_rec *)data;

 mtk_sha_handle_queue(sha->cryp, sha->id - MTK_RING2, ((void*)0));
}
