
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union PM4_MES_TYPE_3_HEADER {unsigned int u32All; unsigned int opcode; size_t count; int type; } ;


 int PM4_TYPE_3 ;

unsigned int pm_build_pm4_header(unsigned int opcode, size_t packet_size)
{
 union PM4_MES_TYPE_3_HEADER header;

 header.u32All = 0;
 header.opcode = opcode;
 header.count = packet_size / 4 - 2;
 header.type = PM4_TYPE_3;

 return header.u32All;
}
