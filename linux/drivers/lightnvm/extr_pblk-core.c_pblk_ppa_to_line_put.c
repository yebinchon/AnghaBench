
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk_line {int ref; } ;
struct pblk {int dummy; } ;


 int kref_put (int *,int ) ;
 int pblk_line_put_wq ;
 struct pblk_line* pblk_ppa_to_line (struct pblk*,struct ppa_addr) ;

void pblk_ppa_to_line_put(struct pblk *pblk, struct ppa_addr ppa)
{
 struct pblk_line *line;

 line = pblk_ppa_to_line(pblk, ppa);
 kref_put(&line->ref, pblk_line_put_wq);
}
