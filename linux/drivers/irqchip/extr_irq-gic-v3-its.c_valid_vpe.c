
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {scalar_t__ col_idx; } ;
struct its_node {scalar_t__ collections; } ;


 scalar_t__ valid_col (scalar_t__) ;

__attribute__((used)) static struct its_vpe *valid_vpe(struct its_node *its, struct its_vpe *vpe)
{
 if (valid_col(its->collections + vpe->col_idx))
  return vpe;

 return ((void*)0);
}
