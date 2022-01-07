
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_cep {int ref; } ;


 int WARN_ON (int) ;
 int __siw_cep_dealloc ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;

void siw_cep_put(struct siw_cep *cep)
{
 WARN_ON(kref_read(&cep->ref) < 1);
 kref_put(&cep->ref, __siw_cep_dealloc);
}
