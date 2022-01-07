
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int ppa; } ;


 int ADDR_EMPTY ;

__attribute__((used)) static inline void pblk_ppa_set_empty(struct ppa_addr *ppa_addr)
{
 ppa_addr->ppa = ADDR_EMPTY;
}
