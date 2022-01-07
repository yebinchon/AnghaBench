
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_tgt_type {int dummy; } ;


 struct nvm_tgt_type* __nvm_find_target_type (char const*) ;
 int down_write (int *) ;
 int nvm_tgtt_lock ;
 int up_write (int *) ;

__attribute__((used)) static struct nvm_tgt_type *nvm_find_target_type(const char *name)
{
 struct nvm_tgt_type *tt;

 down_write(&nvm_tgtt_lock);
 tt = __nvm_find_target_type(name);
 up_write(&nvm_tgtt_lock);

 return tt;
}
