
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int DRM_INFO (char*,...) ;
__attribute__((used)) static u32 mtk_dsi_recv_cnt(u8 type, u8 *read_data)
{
 switch (type) {
 case 129:
 case 132:
  return 1;
 case 128:
 case 131:
  return 2;
 case 130:
 case 133:
  return read_data[1] + read_data[2] * 16;
 case 134:
  DRM_INFO("type is 0x02, try again\n");
  break;
 default:
  DRM_INFO("type(0x%x) not recognized\n", type);
  break;
 }

 return 0;
}
