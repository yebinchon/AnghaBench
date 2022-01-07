
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
u16 enum_to_mtu(int mtu)
{
 switch (mtu) {
 case 135: return 0;
 case 131: return 256;
 case 129: return 512;
 case 134: return 1024;
 case 132: return 2048;
 case 130: return 4096;
 case 128: return 8192;
 case 133: return 10240;
 default: return 0xffff;
 }
}
