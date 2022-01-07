
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_tgt_type {int list; } ;


 int down_write (int *) ;
 int list_del (int *) ;
 int nvm_tgtt_lock ;
 int up_write (int *) ;

void nvm_unregister_tgt_type(struct nvm_tgt_type *tt)
{
 if (!tt)
  return;

 down_write(&nvm_tgtt_lock);
 list_del(&tt->list);
 up_write(&nvm_tgtt_lock);
}
