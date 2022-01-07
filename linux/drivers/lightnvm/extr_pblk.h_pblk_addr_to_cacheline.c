
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;
struct ppa_addr {TYPE_1__ c; } ;



__attribute__((used)) static inline int pblk_addr_to_cacheline(struct ppa_addr ppa)
{
 return ppa.c.line;
}
