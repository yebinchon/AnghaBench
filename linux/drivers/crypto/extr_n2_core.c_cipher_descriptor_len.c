
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int cipher_descriptor_len(int nbytes, unsigned int block_size)
{
 int this_len = nbytes;

 this_len -= (nbytes & (block_size - 1));
 return this_len > (1 << 16) ? (1 << 16) : this_len;
}
