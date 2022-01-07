
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
 int OCC_SBE_STATUS_WORDS ;
 int SBEFIFO_CMD_GET_OCC_SRAM ;
 size_t be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int dev_err (int ,char*,int,...) ;
 int kfree (int *) ;
 int * kzalloc (size_t,int ) ;
 int memcpy (void*,int *,int ) ;
 int sbefifo_parse_status (int ,int,int *,size_t,size_t*) ;
 int sbefifo_submit (int ,int *,int,int *,size_t*) ;

__attribute__((used)) static int occ_getsram(struct occ *occ, u32 address, void *data, ssize_t len)
{
 u32 data_len = ((len + 7) / 8) * 8;
 size_t resp_len, resp_data_len;
 __be32 *resp, cmd[5];
 int rc;





 cmd[0] = cpu_to_be32(0x5);
 cmd[1] = cpu_to_be32(SBEFIFO_CMD_GET_OCC_SRAM);
 cmd[2] = cpu_to_be32(1);
 cmd[3] = cpu_to_be32(address);
 cmd[4] = cpu_to_be32(data_len);

 resp_len = (data_len >> 2) + OCC_SBE_STATUS_WORDS;
 resp = kzalloc(resp_len << 2, GFP_KERNEL);
 if (!resp)
  return -ENOMEM;

 rc = sbefifo_submit(occ->sbefifo, cmd, 5, resp, &resp_len);
 if (rc)
  goto free;

 rc = sbefifo_parse_status(occ->sbefifo, SBEFIFO_CMD_GET_OCC_SRAM,
      resp, resp_len, &resp_len);
 if (rc)
  goto free;

 resp_data_len = be32_to_cpu(resp[resp_len - 1]);
 if (resp_data_len != data_len) {
  dev_err(occ->dev, "SRAM read expected %d bytes got %zd\n",
   data_len, resp_data_len);
  rc = -EBADMSG;
 } else {
  memcpy(data, resp, len);
 }

free:

 if (rc > 0) {
  dev_err(occ->dev, "SRAM read returned failure status: %08x\n",
   rc);
  rc = -EBADMSG;
 }

 kfree(resp);
 return rc;
}
