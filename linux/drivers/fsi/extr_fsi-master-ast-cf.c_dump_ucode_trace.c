
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fsi_master_acf {int dev; scalar_t__ sram; } ;


 scalar_t__ CMD_STAT_REG ;
 scalar_t__ INT_CNT ;
 scalar_t__ RSP_DATA ;
 scalar_t__ STAT_RCRC ;
 scalar_t__ STAT_RTAG ;
 scalar_t__ TRACEBUF ;
 int TR_END ;
 int dev_dbg (int ,char*,char*,...) ;
 int ioread32be (scalar_t__) ;
 int ioread8 (scalar_t__) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void dump_ucode_trace(struct fsi_master_acf *master)
{
 char trbuf[52];
 char *p;
 int i;

 dev_dbg(master->dev,
  "CMDSTAT:%08x RTAG=%02x RCRC=%02x RDATA=%02x #INT=%08x\n",
  ioread32be(master->sram + CMD_STAT_REG),
  ioread8(master->sram + STAT_RTAG),
  ioread8(master->sram + STAT_RCRC),
  ioread32be(master->sram + RSP_DATA),
  ioread32be(master->sram + INT_CNT));

 for (i = 0; i < 512; i++) {
  uint8_t v;
  if ((i % 16) == 0)
   p = trbuf;
  v = ioread8(master->sram + TRACEBUF + i);
  p += sprintf(p, "%02x ", v);
  if (((i % 16) == 15) || v == TR_END)
   dev_dbg(master->dev, "%s\n", trbuf);
  if (v == TR_END)
   break;
 }
}
