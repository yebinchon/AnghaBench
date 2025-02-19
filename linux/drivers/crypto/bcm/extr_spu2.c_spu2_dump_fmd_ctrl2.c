
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SPU2_AAD1_LEN ;
 int SPU2_AAD1_LEN_SHIFT ;
 int SPU2_AAD1_OFFSET ;
 int SPU2_AAD2_OFFSET ;
 int SPU2_AAD2_OFFSET_SHIFT ;
 int SPU2_PL_OFFSET ;
 int SPU2_PL_OFFSET_SHIFT ;
 int packet_log (char*,int,...) ;

__attribute__((used)) static void spu2_dump_fmd_ctrl2(u64 ctrl2)
{
 packet_log(" FMD CTRL2 %#16llx\n", ctrl2);

 packet_log("  AAD1 offset %llu length %llu bytes\n",
     ctrl2 & SPU2_AAD1_OFFSET,
     (ctrl2 & SPU2_AAD1_LEN) >> SPU2_AAD1_LEN_SHIFT);
 packet_log("  AAD2 offset %llu\n",
     (ctrl2 & SPU2_AAD2_OFFSET) >> SPU2_AAD2_OFFSET_SHIFT);
 packet_log("  Payload offset %llu\n",
     (ctrl2 & SPU2_PL_OFFSET) >> SPU2_PL_OFFSET_SHIFT);
}
