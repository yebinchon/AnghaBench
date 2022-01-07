
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ALIGN (unsigned int,int) ;

__attribute__((used)) static inline unsigned int vmw_validation_align(unsigned int val)
{
 return ALIGN(val, sizeof(long));
}
