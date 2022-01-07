
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 sub_op_val(u32 cmd, u32 hi, u32 low)
{
 return (cmd >> low) & ((1U << (hi - low + 1)) - 1);
}
