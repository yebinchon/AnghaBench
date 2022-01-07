
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_hw_desc {int dummy; } ;


 int set_key_size (struct cc_hw_desc*,int) ;

__attribute__((used)) static inline void set_key_size_des(struct cc_hw_desc *pdesc, u32 size)
{
 set_key_size(pdesc, ((size >> 3) - 1));
}
