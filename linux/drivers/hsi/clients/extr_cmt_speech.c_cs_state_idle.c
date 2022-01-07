
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SSI_CHANNEL_STATE_ERROR ;

__attribute__((used)) static inline int cs_state_idle(unsigned int state)
{
 return !(state & ~SSI_CHANNEL_STATE_ERROR);
}
