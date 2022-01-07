
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OPA_MTU_8192 ;
 int mtu_to_enum (int ,int ) ;

int mtu_to_path_mtu(u32 mtu)
{
 return mtu_to_enum(mtu, OPA_MTU_8192);
}
