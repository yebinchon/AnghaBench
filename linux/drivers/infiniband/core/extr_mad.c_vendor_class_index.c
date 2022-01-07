
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IB_MGMT_CLASS_VENDOR_RANGE2_START ;

__attribute__((used)) static int vendor_class_index(u8 mgmt_class)
{
 return mgmt_class - IB_MGMT_CLASS_VENDOR_RANGE2_START;
}
