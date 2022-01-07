
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i5400_error_info {int recmema; } ;



__attribute__((used)) static inline int rec_bank(struct i5400_error_info *info)
{
 return ((info->recmema) >> 12) & 0x7;
}
