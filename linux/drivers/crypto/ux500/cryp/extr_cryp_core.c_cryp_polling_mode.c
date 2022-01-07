
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cryp_device_data {TYPE_1__* base; } ;
struct cryp_ctx {int blocksize; int datalen; scalar_t__ outdata; scalar_t__ indata; } ;
struct TYPE_2__ {int dout; int din; } ;


 int BYTES_PER_WORD ;
 int cryp_wait_until_done (struct cryp_device_data*) ;
 int readsl (int *,int *,int) ;
 int writesl (int *,int *,int) ;

__attribute__((used)) static void cryp_polling_mode(struct cryp_ctx *ctx,
         struct cryp_device_data *device_data)
{
 int len = ctx->blocksize / BYTES_PER_WORD;
 int remaining_length = ctx->datalen;
 u32 *indata = (u32 *)ctx->indata;
 u32 *outdata = (u32 *)ctx->outdata;

 while (remaining_length > 0) {
  writesl(&device_data->base->din, indata, len);
  indata += len;
  remaining_length -= (len * BYTES_PER_WORD);
  cryp_wait_until_done(device_data);

  readsl(&device_data->base->dout, outdata, len);
  outdata += len;
  cryp_wait_until_done(device_data);
 }
}
