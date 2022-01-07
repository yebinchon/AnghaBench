
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int dummy; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void free_pasid_states_level1(struct pasid_state **tbl)
{
 int i;

 for (i = 0; i < 512; ++i) {
  if (tbl[i] == ((void*)0))
   continue;

  free_page((unsigned long)tbl[i]);
 }
}
