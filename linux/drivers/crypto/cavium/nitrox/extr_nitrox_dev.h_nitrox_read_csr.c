
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nitrox_device {scalar_t__ bar_addr; } ;


 scalar_t__ readq (scalar_t__) ;

__attribute__((used)) static inline u64 nitrox_read_csr(struct nitrox_device *ndev, u64 offset)
{
 return readq(ndev->bar_addr + offset);
}
