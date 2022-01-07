
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SPU2_PL_LEN ;
 int SPU2_TLS_LEN ;
 int SPU2_TLS_LEN_SHIFT ;
 int packet_log (char*,int) ;

__attribute__((used)) static void spu2_dump_fmd_ctrl3(u64 ctrl3)
{
 packet_log(" FMD CTRL3 %#16llx\n", ctrl3);

 packet_log("  Payload length %llu bytes\n", ctrl3 & SPU2_PL_LEN);
 packet_log("  TLS length %llu bytes\n",
     (ctrl3 & SPU2_TLS_LEN) >> SPU2_TLS_LEN_SHIFT);
}
