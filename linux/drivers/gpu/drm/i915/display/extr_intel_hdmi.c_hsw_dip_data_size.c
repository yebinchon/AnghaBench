
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEO_DIP_DATA_SIZE ;
 int VIDEO_DIP_PPS_DATA_SIZE ;
 int VIDEO_DIP_VSC_DATA_SIZE ;

__attribute__((used)) static int hsw_dip_data_size(unsigned int type)
{
 switch (type) {
 case 128:
  return VIDEO_DIP_VSC_DATA_SIZE;
 case 129:
  return VIDEO_DIP_PPS_DATA_SIZE;
 default:
  return VIDEO_DIP_DATA_SIZE;
 }
}
