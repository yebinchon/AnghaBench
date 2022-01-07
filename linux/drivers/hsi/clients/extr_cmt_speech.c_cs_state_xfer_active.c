
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SSI_CHANNEL_STATE_READING ;
 unsigned int SSI_CHANNEL_STATE_WRITING ;

__attribute__((used)) static inline int cs_state_xfer_active(unsigned int state)
{
 return (state & SSI_CHANNEL_STATE_WRITING) ||
  (state & SSI_CHANNEL_STATE_READING);
}
