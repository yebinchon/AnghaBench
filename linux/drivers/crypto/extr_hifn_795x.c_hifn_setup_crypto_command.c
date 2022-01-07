
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u16 ;
struct hifn_dma {int cmdu; } ;
struct hifn_device {int dmareg; scalar_t__ desc_virt; } ;
struct hifn_crypt_command {scalar_t__ reserved; scalar_t__ header_skip; void* masks; void* source_count; } ;


 int HIFN_1_DMA_IER ;
 unsigned int HIFN_CRYPT_CMD_SRCLEN_M ;
 unsigned int HIFN_CRYPT_CMD_SRCLEN_S ;
 int HIFN_DMAIER_C_WAIT ;
 void* __cpu_to_le16 (unsigned int) ;
 int hifn_write_1 (struct hifn_device*,int ,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hifn_setup_crypto_command(struct hifn_device *dev,
  u8 *buf, unsigned dlen, unsigned slen,
  u8 *key, int keylen, u8 *iv, int ivsize, u16 mode)
{
 struct hifn_dma *dma = (struct hifn_dma *)dev->desc_virt;
 struct hifn_crypt_command *cry_cmd;
 u8 *buf_pos = buf;
 u16 cmd_len;

 cry_cmd = (struct hifn_crypt_command *)buf_pos;

 cry_cmd->source_count = __cpu_to_le16(dlen & 0xffff);
 dlen >>= 16;
 cry_cmd->masks = __cpu_to_le16(mode |
   ((dlen << HIFN_CRYPT_CMD_SRCLEN_S) &
    HIFN_CRYPT_CMD_SRCLEN_M));
 cry_cmd->header_skip = 0;
 cry_cmd->reserved = 0;

 buf_pos += sizeof(struct hifn_crypt_command);

 dma->cmdu++;
 if (dma->cmdu > 1) {
  dev->dmareg |= HIFN_DMAIER_C_WAIT;
  hifn_write_1(dev, HIFN_1_DMA_IER, dev->dmareg);
 }

 if (keylen) {
  memcpy(buf_pos, key, keylen);
  buf_pos += keylen;
 }
 if (ivsize) {
  memcpy(buf_pos, iv, ivsize);
  buf_pos += ivsize;
 }

 cmd_len = buf_pos - buf;

 return cmd_len;
}
