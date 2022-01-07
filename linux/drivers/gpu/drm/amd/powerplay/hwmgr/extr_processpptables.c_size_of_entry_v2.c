
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UCHAR ;



__attribute__((used)) static ULONG size_of_entry_v2(ULONG num_dpm_levels)
{
 return (sizeof(UCHAR) + sizeof(UCHAR) +
   (num_dpm_levels * sizeof(UCHAR)));
}
