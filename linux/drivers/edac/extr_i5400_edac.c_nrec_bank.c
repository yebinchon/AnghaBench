
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i5400_error_info {int nrecmema; } ;



__attribute__((used)) static inline int nrec_bank(struct i5400_error_info *info)
{
 return ((info->nrecmema) >> 12) & 0x7;
}
