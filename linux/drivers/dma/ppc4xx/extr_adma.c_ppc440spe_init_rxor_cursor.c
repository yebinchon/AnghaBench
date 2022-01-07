
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc440spe_rxor {int state; } ;


 int memset (struct ppc440spe_rxor*,int ,int) ;

__attribute__((used)) static void ppc440spe_init_rxor_cursor(struct ppc440spe_rxor *cursor)
{
 memset(cursor, 0, sizeof(struct ppc440spe_rxor));
 cursor->state = 2;
}
