
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct pipe_ctx {TYPE_2__* stream; } ;
typedef int buffer ;
struct TYPE_4__ {TYPE_1__* ctx; } ;
struct TYPE_3__ {int logger; } ;


 int ASSERT (int) ;
 int DC_LOGGER_INIT (int ) ;
 int RETIMER_REDRIVER_INFO (char*,int,int,int,int) ;
 int i2c_write (struct pipe_ctx*,int,int*,int) ;
 int memset (int**,int ,int) ;

__attribute__((used)) static void write_i2c_default_retimer_setting(
  struct pipe_ctx *pipe_ctx,
  bool is_vga_mode,
  bool is_over_340mhz)
{
 uint8_t slave_address = (0xBA >> 1);
 uint8_t buffer[2];
 bool i2c_success = 0;
 DC_LOGGER_INIT(pipe_ctx->stream->ctx->logger);

 memset(&buffer, 0, sizeof(buffer));



 buffer[0] = 0x0A;
 buffer[1] = 0x13;
 i2c_success = i2c_write(pipe_ctx, slave_address,
   buffer, sizeof(buffer));
 RETIMER_REDRIVER_INFO("retimer writes default setting to slave_address = 0x%x,		offset = 0x%x, reg_val = 0x%x, i2c_success = %d\n",

  slave_address, buffer[0], buffer[1], i2c_success?1:0);
 if (!i2c_success)

  ASSERT(i2c_success);


 buffer[0] = 0x0A;
 buffer[1] = 0x17;
 i2c_success = i2c_write(pipe_ctx, slave_address,
   buffer, sizeof(buffer));
 RETIMER_REDRIVER_INFO("retimer write to slave_addr = 0x%x,		offset = 0x%x, reg_val = 0x%x, i2c_success = %d\n",

  slave_address, buffer[0], buffer[1], i2c_success?1:0);
 if (!i2c_success)

  ASSERT(i2c_success);


 buffer[0] = 0x0B;
 buffer[1] = is_over_340mhz ? 0xDA : 0xD8;
 i2c_success = i2c_write(pipe_ctx, slave_address,
   buffer, sizeof(buffer));
 RETIMER_REDRIVER_INFO("retimer write to slave_addr = 0x%x,		offset = 0x%x, reg_val = 0x%x, i2c_success = %d\n",

  slave_address, buffer[0], buffer[1], i2c_success?1:0);
 if (!i2c_success)

  ASSERT(i2c_success);


 buffer[0] = 0x0A;
 buffer[1] = 0x17;
 i2c_success = i2c_write(pipe_ctx, slave_address,
   buffer, sizeof(buffer));
 RETIMER_REDRIVER_INFO("retimer write to slave_addr = 0x%x,		offset = 0x%x, reg_val= 0x%x, i2c_success = %d\n",

  slave_address, buffer[0], buffer[1], i2c_success?1:0);
 if (!i2c_success)

  ASSERT(i2c_success);


 buffer[0] = 0x0C;
 buffer[1] = is_over_340mhz ? 0x1D : 0x91;
 i2c_success = i2c_write(pipe_ctx, slave_address,
   buffer, sizeof(buffer));
 RETIMER_REDRIVER_INFO("retimer write to slave_addr = 0x%x,		offset = 0x%x, reg_val = 0x%x, i2c_success = %d\n",

  slave_address, buffer[0], buffer[1], i2c_success?1:0);
 if (!i2c_success)

  ASSERT(i2c_success);


 buffer[0] = 0x0A;
 buffer[1] = 0x17;
 i2c_success = i2c_write(pipe_ctx, slave_address,
   buffer, sizeof(buffer));
 RETIMER_REDRIVER_INFO("retimer write to slave_addr = 0x%x,		offset = 0x%x, reg_val = 0x%x, i2c_success = %d\n",

  slave_address, buffer[0], buffer[1], i2c_success?1:0);
 if (!i2c_success)

  ASSERT(i2c_success);


 if (is_vga_mode) {



  buffer[0] = 0xff;
  buffer[1] = 0x01;
  i2c_success = i2c_write(pipe_ctx, slave_address,
    buffer, sizeof(buffer));
  RETIMER_REDRIVER_INFO("retimer write to slave_addr = 0x%x,			offset = 0x%x, reg_val = 0x%x, i2c_success = %d\n",

   slave_address, buffer[0], buffer[1], i2c_success?1:0);
  if (!i2c_success)

   ASSERT(i2c_success);


  buffer[0] = 0x00;
  buffer[1] = 0x23;
  i2c_success = i2c_write(pipe_ctx, slave_address,
    buffer, sizeof(buffer));
  RETIMER_REDRIVER_INFO("retimer write to slave_addr = 0x%x,			offset = 0x%x, reg_val= 0x%x, i2c_success = %d\n",

   slave_address, buffer[0], buffer[1], i2c_success?1:0);
  if (!i2c_success)

   ASSERT(i2c_success);


  buffer[0] = 0xff;
  buffer[1] = 0x00;
  i2c_success = i2c_write(pipe_ctx, slave_address,
    buffer, sizeof(buffer));
  RETIMER_REDRIVER_INFO("retimer write default setting to slave_addr = 0x%x,			offset = 0x%x, reg_val= 0x%x, i2c_success = %d end here\n",

   slave_address, buffer[0], buffer[1], i2c_success?1:0);
  if (!i2c_success)

   ASSERT(i2c_success);
 }
}
