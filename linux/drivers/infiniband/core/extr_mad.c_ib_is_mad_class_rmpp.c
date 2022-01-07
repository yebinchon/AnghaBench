
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ IB_MGMT_CLASS_BIS ;
 scalar_t__ IB_MGMT_CLASS_DEVICE_ADM ;
 scalar_t__ IB_MGMT_CLASS_DEVICE_MGMT ;
 scalar_t__ IB_MGMT_CLASS_SUBN_ADM ;
 scalar_t__ IB_MGMT_CLASS_VENDOR_RANGE2_END ;
 scalar_t__ IB_MGMT_CLASS_VENDOR_RANGE2_START ;

int ib_is_mad_class_rmpp(u8 mgmt_class)
{
 if ((mgmt_class == IB_MGMT_CLASS_SUBN_ADM) ||
     (mgmt_class == IB_MGMT_CLASS_DEVICE_MGMT) ||
     (mgmt_class == IB_MGMT_CLASS_DEVICE_ADM) ||
     (mgmt_class == IB_MGMT_CLASS_BIS) ||
     ((mgmt_class >= IB_MGMT_CLASS_VENDOR_RANGE2_START) &&
      (mgmt_class <= IB_MGMT_CLASS_VENDOR_RANGE2_END)))
  return 1;
 return 0;
}
