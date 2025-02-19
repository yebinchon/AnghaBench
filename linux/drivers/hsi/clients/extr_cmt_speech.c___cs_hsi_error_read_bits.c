
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SSI_CHANNEL_STATE_ERROR ;
 unsigned int SSI_CHANNEL_STATE_POLL ;
 unsigned int SSI_CHANNEL_STATE_READING ;

__attribute__((used)) static inline void __cs_hsi_error_read_bits(unsigned int *state)
{
 *state |= SSI_CHANNEL_STATE_ERROR;
 *state &= ~(SSI_CHANNEL_STATE_READING | SSI_CHANNEL_STATE_POLL);
}
