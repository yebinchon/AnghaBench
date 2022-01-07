
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blk; } ;
struct ppa_addr {TYPE_1__ a; } ;



__attribute__((used)) static inline int pblk_ppa_to_line_id(struct ppa_addr p)
{
 return p.a.blk;
}
