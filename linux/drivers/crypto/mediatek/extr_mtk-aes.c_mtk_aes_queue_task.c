
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_aes_rec {int id; int cryp; } ;


 int mtk_aes_handle_queue (int ,int ,int *) ;

__attribute__((used)) static void mtk_aes_queue_task(unsigned long data)
{
 struct mtk_aes_rec *aes = (struct mtk_aes_rec *)data;

 mtk_aes_handle_queue(aes->cryp, aes->id, ((void*)0));
}
