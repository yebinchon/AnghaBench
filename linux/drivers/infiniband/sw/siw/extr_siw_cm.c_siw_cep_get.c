
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_cep {int ref; } ;


 int kref_get (int *) ;

void siw_cep_get(struct siw_cep *cep)
{
 kref_get(&cep->ref);
}
