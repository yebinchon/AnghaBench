
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DM_VERITY_FEC_BUF_RS_BITS ;

__attribute__((used)) static inline unsigned fec_buffer_rs_index(unsigned i, unsigned j)
{
 return (i << DM_VERITY_FEC_BUF_RS_BITS) + j;
}
