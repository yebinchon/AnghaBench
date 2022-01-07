
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct occ {int dev; int sbefifo; } ;
typedef int ssize_t ;
typedef int __be32 ;


 int EBADMSG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t OCC_SBE_STATUS_WORDS ;
 int SBEFIFO_CMD_PUT_OCC_SRAM ;
 size_t be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int dev_err (int ,char*,int,...) ;
 int kfree (int *) ;
 int * kzalloc (size_t,int ) ;
 size_t max (size_t,size_t) ;
 int memcpy (int *,void const*,int ) ;
 int sbefifo_parse_status (int ,int,int *,size_t,size_t*) ;
 int sbefifo_submit (int ,int *,size_t,int *,size_t*) ;

__attribute__((used)) static int occ_putsram(struct occ *occ, u32 address, const void *data,
         ssize_t len)
{
 size_t cmd_len, buf_len, resp_len, resp_data_len;
 u32 data_len = ((len + 7) / 8) * 8;
 __be32 *buf;
 int rc;





 resp_len = OCC_SBE_STATUS_WORDS;
 cmd_len = (data_len >> 2) + 5;
 buf_len = max(cmd_len, resp_len);
 buf = kzalloc(buf_len << 2, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;





 buf[0] = cpu_to_be32(cmd_len);
 buf[1] = cpu_to_be32(SBEFIFO_CMD_PUT_OCC_SRAM);
 buf[2] = cpu_to_be32(1);
 buf[3] = cpu_to_be32(address);
 buf[4] = cpu_to_be32(data_len);

 memcpy(&buf[5], data, len);

 rc = sbefifo_submit(occ->sbefifo, buf, cmd_len, buf, &resp_len);
 if (rc)
  goto free;

 rc = sbefifo_parse_status(occ->sbefifo, SBEFIFO_CMD_PUT_OCC_SRAM,
      buf, resp_len, &resp_len);
 if (rc)
  goto free;

 if (resp_len != 1) {
  dev_err(occ->dev, "SRAM write response length invalid: %zd\n",
   resp_len);
  rc = -EBADMSG;
 } else {
  resp_data_len = be32_to_cpu(buf[0]);
  if (resp_data_len != data_len) {
   dev_err(occ->dev,
    "SRAM write expected %d bytes got %zd\n",
    data_len, resp_data_len);
   rc = -EBADMSG;
  }
 }

free:

 if (rc > 0) {
  dev_err(occ->dev, "SRAM write returned failure status: %08x\n",
   rc);
  rc = -EBADMSG;
 }

 kfree(buf);
 return rc;
}
