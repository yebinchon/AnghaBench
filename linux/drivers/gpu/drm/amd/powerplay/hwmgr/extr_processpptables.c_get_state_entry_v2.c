
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_6__ {int ucNumDPMLevels; } ;
struct TYPE_5__ {scalar_t__ ucNumEntries; TYPE_2__* states; } ;
typedef TYPE_1__ StateArray ;
typedef TYPE_2__ ATOM_PPLIB_STATE_V2 ;


 scalar_t__ size_of_entry_v2 (int ) ;

__attribute__((used)) static const ATOM_PPLIB_STATE_V2 *get_state_entry_v2(
     const StateArray * pstate_arrays,
        ULONG entry_index)
{
 ULONG i;
 const ATOM_PPLIB_STATE_V2 *pstate;

 pstate = pstate_arrays->states;
 if (entry_index <= pstate_arrays->ucNumEntries) {
  for (i = 0; i < entry_index; i++)
   pstate = (ATOM_PPLIB_STATE_V2 *)(
        (unsigned long)pstate +
        size_of_entry_v2(pstate->ucNumDPMLevels));
 }
 return pstate;
}
