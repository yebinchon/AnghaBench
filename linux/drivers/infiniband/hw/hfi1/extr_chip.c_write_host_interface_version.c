
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int GENERAL_CONFIG ;
 int HOST_INTERFACE_VERSION_MASK ;
 int HOST_INTERFACE_VERSION_SHIFT ;
 int RESERVED_REGISTERS ;
 int load_8051_config (struct hfi1_devdata*,int ,int ,int) ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int*) ;

int write_host_interface_version(struct hfi1_devdata *dd, u8 version)
{
 u32 frame;
 u32 mask;

 mask = (HOST_INTERFACE_VERSION_MASK << HOST_INTERFACE_VERSION_SHIFT);
 read_8051_config(dd, RESERVED_REGISTERS, GENERAL_CONFIG, &frame);

 frame &= ~mask;
 frame |= ((u32)version << HOST_INTERFACE_VERSION_SHIFT);
 return load_8051_config(dd, RESERVED_REGISTERS, GENERAL_CONFIG,
    frame);
}
