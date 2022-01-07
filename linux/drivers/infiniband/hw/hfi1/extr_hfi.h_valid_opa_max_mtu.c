
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ valid_ib_mtu (unsigned int) ;

__attribute__((used)) static inline int valid_opa_max_mtu(unsigned int mtu)
{
 return mtu >= 2048 &&
  (valid_ib_mtu(mtu) || mtu == 8192 || mtu == 10240);
}
