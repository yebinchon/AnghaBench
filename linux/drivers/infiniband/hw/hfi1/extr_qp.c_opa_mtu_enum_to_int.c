
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int opa_mtu_enum_to_int(int mtu)
{
 switch (mtu) {
 case 128: return 8192;
 case 129: return 10240;
 default: return -1;
 }
}
