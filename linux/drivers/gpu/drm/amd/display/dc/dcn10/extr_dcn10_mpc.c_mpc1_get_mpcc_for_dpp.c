
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcc {int dpp_id; struct mpcc* mpcc_bot; } ;
struct mpc_tree {struct mpcc* opp_list; } ;



struct mpcc *mpc1_get_mpcc_for_dpp(struct mpc_tree *tree, int dpp_id)
{
 struct mpcc *tmp_mpcc = tree->opp_list;

 while (tmp_mpcc != ((void*)0)) {
  if (tmp_mpcc->dpp_id == dpp_id)
   return tmp_mpcc;
  tmp_mpcc = tmp_mpcc->mpcc_bot;
 }
 return ((void*)0);
}
