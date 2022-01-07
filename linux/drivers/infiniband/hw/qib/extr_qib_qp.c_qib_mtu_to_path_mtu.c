
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mtu_to_enum (int ) ;

int qib_mtu_to_path_mtu(u32 mtu)
{
 return mtu_to_enum(mtu);
}
