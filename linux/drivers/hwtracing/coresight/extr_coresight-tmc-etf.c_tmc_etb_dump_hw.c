
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmc_drvdata {char* buf; scalar_t__ len; scalar_t__ base; } ;


 scalar_t__ TMC_RRD ;
 scalar_t__ TMC_STS ;
 int TMC_STS_FULL ;
 int coresight_insert_barrier_packet (char*) ;
 int memcpy (char*,int*,int) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void tmc_etb_dump_hw(struct tmc_drvdata *drvdata)
{
 char *bufp;
 u32 read_data, lost;


 lost = readl_relaxed(drvdata->base + TMC_STS) & TMC_STS_FULL;
 bufp = drvdata->buf;
 drvdata->len = 0;
 while (1) {
  read_data = readl_relaxed(drvdata->base + TMC_RRD);
  if (read_data == 0xFFFFFFFF)
   break;
  memcpy(bufp, &read_data, 4);
  bufp += 4;
  drvdata->len += 4;
 }

 if (lost)
  coresight_insert_barrier_packet(drvdata->buf);
 return;
}
