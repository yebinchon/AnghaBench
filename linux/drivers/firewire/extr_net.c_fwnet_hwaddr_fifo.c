
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifo_lo; int fifo_hi; } ;
union fwnet_hwaddr {TYPE_1__ uc; } ;
typedef int u64 ;
typedef int __u64 ;


 scalar_t__ get_unaligned_be16 (int *) ;
 int get_unaligned_be32 (int *) ;

__attribute__((used)) static __u64 fwnet_hwaddr_fifo(union fwnet_hwaddr *ha)
{
 return (u64)get_unaligned_be16(&ha->uc.fifo_hi) << 32
        | get_unaligned_be32(&ha->uc.fifo_lo);
}
