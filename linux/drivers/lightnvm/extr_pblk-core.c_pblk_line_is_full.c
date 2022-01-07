
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line {scalar_t__ left_msecs; } ;



int pblk_line_is_full(struct pblk_line *line)
{
 return (line->left_msecs == 0);
}
