
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAID10_OFFSET ;

__attribute__((used)) static bool __is_raid10_offset(int layout)
{
 return !!(layout & RAID10_OFFSET);
}
