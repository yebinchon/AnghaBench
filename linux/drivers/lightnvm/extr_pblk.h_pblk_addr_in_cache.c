
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_cached; } ;
struct ppa_addr {scalar_t__ ppa; TYPE_1__ c; } ;


 scalar_t__ ADDR_EMPTY ;

__attribute__((used)) static inline int pblk_addr_in_cache(struct ppa_addr ppa)
{
 return (ppa.ppa != ADDR_EMPTY && ppa.c.is_cached);
}
