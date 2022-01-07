
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sge {int dummy; } ;
typedef int __u32 ;


 int ALIGN (size_t,int) ;
 int GFP_KERNEL ;
 int U32_MAX ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static void *alloc_wr(size_t wr_size, __u32 num_sge)
{
 if (num_sge >= (U32_MAX - ALIGN(wr_size, sizeof (struct ib_sge))) /
         sizeof (struct ib_sge))
  return ((void*)0);

 return kmalloc(ALIGN(wr_size, sizeof (struct ib_sge)) +
    num_sge * sizeof (struct ib_sge), GFP_KERNEL);
}
