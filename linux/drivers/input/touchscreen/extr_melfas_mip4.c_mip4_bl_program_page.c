
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mip4_ts {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MIP4_BL_PACKET_SIZE ;
 int MIP4_BL_PAGE_SIZE ;
 int MIP4_BOOT_CMD_PROGRAM ;
 int MIP4_R0_BOOT ;
 int MIP4_R1_BOOT_CMD ;
 int MIP4_R1_BOOT_SIZE ;
 int MIP4_R1_BOOT_TARGET_ADDR ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_err (int *,char*,int,...) ;
 int i2c_master_send (TYPE_1__*,int *,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int const*,int) ;
 int mip4_bl_read_status (struct mip4_ts*) ;
 int put_unaligned_be16 (int,int *) ;
 int put_unaligned_le32 (int,int *) ;

__attribute__((used)) static int mip4_bl_program_page(struct mip4_ts *ts, int offset,
    const u8 *data, int length, u16 buf_addr)
{
 u8 cmd[6];
 u8 *data_buf;
 u16 buf_offset;
 int ret;
 int error;

 dev_dbg(&ts->client->dev, "Writing page @%#06x (%d)\n",
  offset, length);

 if (length > MIP4_BL_PAGE_SIZE || length % MIP4_BL_PACKET_SIZE) {
  dev_err(&ts->client->dev,
   "Invalid page length: %d\n", length);
  return -EINVAL;
 }

 data_buf = kmalloc(2 + MIP4_BL_PACKET_SIZE, GFP_KERNEL);
 if (!data_buf)
  return -ENOMEM;


 cmd[0] = MIP4_R0_BOOT;
 cmd[1] = MIP4_R1_BOOT_TARGET_ADDR;
 put_unaligned_le32(offset, &cmd[2]);
 ret = i2c_master_send(ts->client, cmd, 6);
 if (ret != 6) {
  error = ret < 0 ? ret : -EIO;
  dev_err(&ts->client->dev,
   "Failed to send write page address: %d\n", error);
  goto out;
 }


 cmd[0] = MIP4_R0_BOOT;
 cmd[1] = MIP4_R1_BOOT_SIZE;
 put_unaligned_le32(length, &cmd[2]);
 ret = i2c_master_send(ts->client, cmd, 6);
 if (ret != 6) {
  error = ret < 0 ? ret : -EIO;
  dev_err(&ts->client->dev,
   "Failed to send write page size: %d\n", error);
  goto out;
 }


 for (buf_offset = 0;
      buf_offset < length;
      buf_offset += MIP4_BL_PACKET_SIZE) {
  dev_dbg(&ts->client->dev,
   "writing chunk at %#04x (size %d)\n",
   buf_offset, MIP4_BL_PACKET_SIZE);
  put_unaligned_be16(buf_addr + buf_offset, data_buf);
  memcpy(&data_buf[2], &data[buf_offset], MIP4_BL_PACKET_SIZE);
  ret = i2c_master_send(ts->client,
          data_buf, 2 + MIP4_BL_PACKET_SIZE);
  if (ret != 2 + MIP4_BL_PACKET_SIZE) {
   error = ret < 0 ? ret : -EIO;
   dev_err(&ts->client->dev,
    "Failed to read chunk at %#04x (size %d): %d\n",
    buf_offset, MIP4_BL_PACKET_SIZE, error);
   goto out;
  }
 }


 cmd[0] = MIP4_R0_BOOT;
 cmd[1] = MIP4_R1_BOOT_CMD;
 cmd[2] = MIP4_BOOT_CMD_PROGRAM;
 ret = i2c_master_send(ts->client, cmd, 3);
 if (ret != 3) {
  error = ret < 0 ? ret : -EIO;
  dev_err(&ts->client->dev,
   "Failed to send 'write' command: %d\n", error);
  goto out;
 }


 error = mip4_bl_read_status(ts);

out:
 kfree(data_buf);
 return error ? error : 0;
}
