
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line {int dummy; } ;
struct pblk {int dummy; } ;


 int BUG_ON (int ) ;
 int __pblk_map_invalidate (struct pblk*,struct pblk_line*,int ) ;
 int pblk_addr_in_cache (struct ppa_addr) ;
 int pblk_dev_ppa_to_line_addr (struct pblk*,struct ppa_addr) ;
 int pblk_ppa_empty (struct ppa_addr) ;
 struct pblk_line* pblk_ppa_to_line (struct pblk*,struct ppa_addr) ;

void pblk_map_invalidate(struct pblk *pblk, struct ppa_addr ppa)
{
 struct pblk_line *line;
 u64 paddr;







 line = pblk_ppa_to_line(pblk, ppa);
 paddr = pblk_dev_ppa_to_line_addr(pblk, ppa);

 __pblk_map_invalidate(pblk, line, paddr);
}
