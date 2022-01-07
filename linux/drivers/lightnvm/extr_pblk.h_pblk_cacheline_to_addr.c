
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; int is_cached; } ;
struct ppa_addr {TYPE_1__ c; } ;



__attribute__((used)) static inline struct ppa_addr pblk_cacheline_to_addr(int addr)
{
 struct ppa_addr p;

 p.c.line = addr;
 p.c.is_cached = 1;

 return p;
}
