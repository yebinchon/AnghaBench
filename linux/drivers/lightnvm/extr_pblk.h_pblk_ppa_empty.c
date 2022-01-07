
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {scalar_t__ ppa; } ;


 scalar_t__ ADDR_EMPTY ;

__attribute__((used)) static inline int pblk_ppa_empty(struct ppa_addr ppa_addr)
{
 return (ppa_addr.ppa == ADDR_EMPTY);
}
