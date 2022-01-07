
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int OCRDMA_STATE_FLAG_ENABLED ;
 int OCRDMA_STATE_FLAG_SYNC ;

__attribute__((used)) static inline u8 ocrdma_is_enabled_and_synced(u32 state)
{


 return (state & OCRDMA_STATE_FLAG_ENABLED) &&
  (state & OCRDMA_STATE_FLAG_SYNC);
}
