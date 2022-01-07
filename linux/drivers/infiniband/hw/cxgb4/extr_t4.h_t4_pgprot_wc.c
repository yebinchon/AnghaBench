
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;

__attribute__((used)) static inline pgprot_t t4_pgprot_wc(pgprot_t prot)
{

 return pgprot_writecombine(prot);



}
