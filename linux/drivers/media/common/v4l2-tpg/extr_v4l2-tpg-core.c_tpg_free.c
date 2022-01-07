
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg_data {int ** random_line; int ** black_line; int ** contrast_line; int *** downsampled_lines; int *** lines; } ;


 unsigned int TPG_MAX_PAT_LINES ;
 unsigned int TPG_MAX_PLANES ;
 int vfree (int *) ;

void tpg_free(struct tpg_data *tpg)
{
 unsigned pat;
 unsigned plane;

 for (pat = 0; pat < TPG_MAX_PAT_LINES; pat++)
  for (plane = 0; plane < TPG_MAX_PLANES; plane++) {
   vfree(tpg->lines[pat][plane]);
   tpg->lines[pat][plane] = ((void*)0);
   if (plane == 0)
    continue;
   vfree(tpg->downsampled_lines[pat][plane]);
   tpg->downsampled_lines[pat][plane] = ((void*)0);
  }
 for (plane = 0; plane < TPG_MAX_PLANES; plane++) {
  vfree(tpg->contrast_line[plane]);
  vfree(tpg->black_line[plane]);
  vfree(tpg->random_line[plane]);
  tpg->contrast_line[plane] = ((void*)0);
  tpg->black_line[plane] = ((void*)0);
  tpg->random_line[plane] = ((void*)0);
 }
}
