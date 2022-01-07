
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAID10_FAR_COPIES_SHIFT ;
 unsigned int __raid10_near_copies (int) ;

__attribute__((used)) static unsigned int __raid10_far_copies(int layout)
{
 return __raid10_near_copies(layout >> RAID10_FAR_COPIES_SHIFT);
}
