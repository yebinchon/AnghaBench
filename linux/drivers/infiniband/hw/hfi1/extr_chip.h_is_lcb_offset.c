
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ LCB_END ;
 scalar_t__ LCB_START ;

__attribute__((used)) static inline int is_lcb_offset(u32 offset)
{
 return (offset >= LCB_START && offset < LCB_END);
}
