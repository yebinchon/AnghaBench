
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int dummy; } ;


 int free_pasid_states_level1 (struct pasid_state**) ;

__attribute__((used)) static void free_pasid_states_level2(struct pasid_state **tbl)
{
 struct pasid_state **ptr;
 int i;

 for (i = 0; i < 512; ++i) {
  if (tbl[i] == ((void*)0))
   continue;

  ptr = (struct pasid_state **)tbl[i];
  free_pasid_states_level1(ptr);
 }
}
