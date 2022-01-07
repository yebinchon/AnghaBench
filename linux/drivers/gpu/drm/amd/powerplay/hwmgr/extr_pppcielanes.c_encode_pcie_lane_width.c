
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;


 int * pp_r600_encode_lanes ;

uint8_t encode_pcie_lane_width(uint32_t num_lanes)
{
 return pp_r600_encode_lanes[num_lanes];
}
