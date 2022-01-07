
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_line {int dummy; } ;
struct TYPE_2__ {struct pblk_line* data_line; } ;
struct pblk {TYPE_1__ l_mg; } ;



struct pblk_line *pblk_line_get_data(struct pblk *pblk)
{
 return pblk->l_mg.data_line;
}
