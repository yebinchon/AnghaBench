
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_mtu { ____Placeholder_pvrdma_mtu } pvrdma_mtu ;
__attribute__((used)) static inline int pvrdma_mtu_enum_to_int(enum pvrdma_mtu mtu)
{
 switch (mtu) {
 case 130: return 256;
 case 128: return 512;
 case 132: return 1024;
 case 131: return 2048;
 case 129: return 4096;
 default: return -1;
 }
}
