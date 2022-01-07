
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_collection {int target_address; } ;


 int GENMASK_ULL (int,int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;

__attribute__((used)) static struct its_collection *valid_col(struct its_collection *col)
{
 if (WARN_ON_ONCE(col->target_address & GENMASK_ULL(15, 0)))
  return ((void*)0);

 return col;
}
