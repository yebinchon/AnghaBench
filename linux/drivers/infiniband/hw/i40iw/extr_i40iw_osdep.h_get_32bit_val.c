
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void get_32bit_val(u32 *wqe_words, u32 byte_index, u32 *value)
{
 *value = wqe_words[byte_index >> 2];
}
