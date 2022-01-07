
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_hw_desc {int * word; } ;



__attribute__((used)) static inline void set_xor_val(struct cc_hw_desc *pdesc, u32 val)
{
 pdesc->word[2] = val;
}
