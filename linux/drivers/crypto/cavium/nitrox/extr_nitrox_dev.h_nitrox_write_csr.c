
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nitrox_device {scalar_t__ bar_addr; } ;


 int writeq (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void nitrox_write_csr(struct nitrox_device *ndev, u64 offset,
        u64 value)
{
 writeq(value, (ndev->bar_addr + offset));
}
