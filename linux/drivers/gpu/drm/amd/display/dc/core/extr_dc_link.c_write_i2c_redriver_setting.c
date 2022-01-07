
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
 int RETIMER_REDRIVER_INFO (char*,int,int,int,int,int,int) ;
 int i2c_write (struct pipe_ctx*,int,int*,int) ;
 int memset (int**,int ,int) ;

__attribute__((used)) static void write_i2c_redriver_setting(
  struct pipe_ctx *pipe_ctx,
  bool is_over_340mhz)
{
 uint8_t slave_address = (0xF0 >> 1);
 uint8_t buffer[16];
 bool i2c_success = 0;
 DC_LOGGER_INIT(pipe_ctx->stream->ctx->logger);

 memset(&buffer, 0, sizeof(buffer));


 buffer[3] = 0x4E;
 buffer[4] = 0x4E;
 buffer[5] = 0x4E;
 buffer[6] = is_over_340mhz ? 0x4E : 0x4A;

 i2c_success = i2c_write(pipe_ctx, slave_address,
     buffer, sizeof(buffer));
 RETIMER_REDRIVER_INFO("redriver write 0 to all 16 reg offset expect following:\n		\t slave_addr = 0x%x, offset[3] = 0x%x, offset[4] = 0x%x,		offset[5] = 0x%x,offset[6] is_over_340mhz = 0x%x,		i2c_success = %d\n",



  slave_address, buffer[3], buffer[4], buffer[5], buffer[6], i2c_success?1:0);

 if (!i2c_success)

  ASSERT(i2c_success);
}
