
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_tgt_type {int list; int name; } ;


 int EEXIST ;
 scalar_t__ __nvm_find_target_type (int ) ;
 int down_write (int *) ;
 int list_add (int *,int *) ;
 int nvm_tgt_types ;
 int nvm_tgtt_lock ;
 int up_write (int *) ;

int nvm_register_tgt_type(struct nvm_tgt_type *tt)
{
 int ret = 0;

 down_write(&nvm_tgtt_lock);
 if (__nvm_find_target_type(tt->name))
  ret = -EEXIST;
 else
  list_add(&tt->list, &nvm_tgt_types);
 up_write(&nvm_tgtt_lock);

 return ret;
}
