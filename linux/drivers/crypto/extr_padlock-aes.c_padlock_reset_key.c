
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cword {int dummy; } ;


 int paes_last_cword ;
 struct cword* per_cpu (int ,int) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline void padlock_reset_key(struct cword *cword)
{
 int cpu = raw_smp_processor_id();

 if (cword != per_cpu(paes_last_cword, cpu))

  asm volatile ("pushfl; popfl");



}
