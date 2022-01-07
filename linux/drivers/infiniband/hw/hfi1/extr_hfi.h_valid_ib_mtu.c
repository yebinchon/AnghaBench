
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int valid_ib_mtu(unsigned int mtu)
{
 return mtu == 256 || mtu == 512 ||
  mtu == 1024 || mtu == 2048 ||
  mtu == 4096;
}
