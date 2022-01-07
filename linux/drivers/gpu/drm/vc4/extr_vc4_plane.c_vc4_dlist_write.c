
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct vc4_plane_state {int dlist_count; int dlist_size; void** dlist; } ;


 int GFP_KERNEL ;
 int kfree (void**) ;
 void** kmalloc_array (void*,int,int ) ;
 void* max (unsigned int,int) ;
 int memcpy (void**,void**,int) ;

__attribute__((used)) static void vc4_dlist_write(struct vc4_plane_state *vc4_state, u32 val)
{
 if (vc4_state->dlist_count == vc4_state->dlist_size) {
  u32 new_size = max(4u, vc4_state->dlist_count * 2);
  u32 *new_dlist = kmalloc_array(new_size, 4, GFP_KERNEL);

  if (!new_dlist)
   return;
  memcpy(new_dlist, vc4_state->dlist, vc4_state->dlist_count * 4);

  kfree(vc4_state->dlist);
  vc4_state->dlist = new_dlist;
  vc4_state->dlist_size = new_size;
 }

 vc4_state->dlist[vc4_state->dlist_count++] = val;
}
