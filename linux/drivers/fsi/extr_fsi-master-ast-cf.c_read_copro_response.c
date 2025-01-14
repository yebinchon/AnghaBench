
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int u8 ;
struct fsi_master_acf {int dev; scalar_t__ sram; } ;


 int EAGAIN ;
 int ENODEV ;
 int FSI_RESP_ACK ;
 scalar_t__ RSP_DATA ;
 scalar_t__ STAT_RCRC ;
 scalar_t__ STAT_RTAG ;
 scalar_t__ crc4 (scalar_t__,int,int) ;
 int dev_dbg (int ,char*) ;
 scalar_t__ ioread32be (scalar_t__) ;
 int ioread8 (scalar_t__) ;
 int trace_fsi_master_acf_copro_response (struct fsi_master_acf*,int,int,scalar_t__,int) ;

__attribute__((used)) static int read_copro_response(struct fsi_master_acf *master, uint8_t size,
          uint32_t *response, u8 *tag)
{
 uint8_t rtag = ioread8(master->sram + STAT_RTAG) & 0xf;
 uint8_t rcrc = ioread8(master->sram + STAT_RCRC) & 0xf;
 uint32_t rdata = 0;
 uint32_t crc;
 uint8_t ack;

 *tag = ack = rtag & 3;


 crc = crc4(0, 1, 1);
 crc = crc4(crc, rtag, 4);
 if (ack == FSI_RESP_ACK && size) {
  rdata = ioread32be(master->sram + RSP_DATA);
  crc = crc4(crc, rdata, size);
  if (response)
   *response = rdata;
 }
 crc = crc4(crc, rcrc, 4);

 trace_fsi_master_acf_copro_response(master, rtag, rcrc, rdata, crc == 0);

 if (crc) {




  if ((rtag == 0xf && rcrc == 0xf) || (rtag == 0 && rcrc == 0))
   return -ENODEV;
  dev_dbg(master->dev, "Bad response CRC !\n");
  return -EAGAIN;
 }
 return 0;
}
