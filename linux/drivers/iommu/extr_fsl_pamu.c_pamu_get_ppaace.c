
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paace {int dummy; } ;


 int PAACE_NUMBER_ENTRIES ;
 struct paace* ppaact ;
 int pr_debug (char*) ;

__attribute__((used)) static struct paace *pamu_get_ppaace(int liodn)
{
 if (!ppaact || liodn >= PAACE_NUMBER_ENTRIES) {
  pr_debug("PPAACT doesn't exist\n");
  return ((void*)0);
 }

 return &ppaact[liodn];
}
