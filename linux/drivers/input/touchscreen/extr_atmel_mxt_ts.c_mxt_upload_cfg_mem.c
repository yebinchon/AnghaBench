
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxt_data {TYPE_1__* client; } ;
struct mxt_cfg {unsigned int mem_size; scalar_t__ mem; scalar_t__ start_ofs; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int MXT_MAX_BLOCK_WRITE ;
 int __mxt_write_reg (TYPE_1__*,scalar_t__,unsigned int,scalar_t__) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int mxt_upload_cfg_mem(struct mxt_data *data, struct mxt_cfg *cfg)
{
 unsigned int byte_offset = 0;
 int error;


 while (byte_offset < cfg->mem_size) {
  unsigned int size = cfg->mem_size - byte_offset;

  if (size > MXT_MAX_BLOCK_WRITE)
   size = MXT_MAX_BLOCK_WRITE;

  error = __mxt_write_reg(data->client,
     cfg->start_ofs + byte_offset,
     size, cfg->mem + byte_offset);
  if (error) {
   dev_err(&data->client->dev,
    "Config write error, ret=%d\n", error);
   return error;
  }

  byte_offset += size;
 }

 return 0;
}
