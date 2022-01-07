
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;


 int IB_MTU_1024 ;
 int IB_MTU_2048 ;
 int IB_MTU_256 ;
 int IB_MTU_4096 ;
 int IB_MTU_512 ;

__attribute__((used)) static inline enum ib_mtu rxe_mtu_int_to_enum(int mtu)
{
 if (mtu < 256)
  return 0;
 else if (mtu < 512)
  return IB_MTU_256;
 else if (mtu < 1024)
  return IB_MTU_512;
 else if (mtu < 2048)
  return IB_MTU_1024;
 else if (mtu < 4096)
  return IB_MTU_2048;
 else
  return IB_MTU_4096;
}
