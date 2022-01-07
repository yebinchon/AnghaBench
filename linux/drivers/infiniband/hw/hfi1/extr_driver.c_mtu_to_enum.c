
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OPA_MTU_0 ;
 int OPA_MTU_1024 ;
 int OPA_MTU_10240 ;
 int OPA_MTU_2048 ;
 int OPA_MTU_256 ;
 int OPA_MTU_4096 ;
 int OPA_MTU_512 ;
 int OPA_MTU_8192 ;

int mtu_to_enum(u32 mtu, int default_if_bad)
{
 switch (mtu) {
 case 0: return OPA_MTU_0;
 case 256: return OPA_MTU_256;
 case 512: return OPA_MTU_512;
 case 1024: return OPA_MTU_1024;
 case 2048: return OPA_MTU_2048;
 case 4096: return OPA_MTU_4096;
 case 8192: return OPA_MTU_8192;
 case 10240: return OPA_MTU_10240;
 }
 return default_if_bad;
}
