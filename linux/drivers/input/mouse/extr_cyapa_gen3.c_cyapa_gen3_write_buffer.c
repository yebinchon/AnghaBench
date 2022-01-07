
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int dummy; } ;


 int CYAPA_CMD_LEN ;
 int cyapa_i2c_reg_write_block (struct cyapa*,int ,size_t,unsigned char*) ;
 int memcpy (unsigned char*,int const*,size_t) ;

__attribute__((used)) static int cyapa_gen3_write_buffer(struct cyapa *cyapa,
  const u8 *buf, size_t len)
{
 int error;
 size_t i;
 unsigned char cmd[CYAPA_CMD_LEN + 1];
 size_t cmd_len;

 for (i = 0; i < len; i += CYAPA_CMD_LEN) {
  const u8 *payload = &buf[i];

  cmd_len = (len - i >= CYAPA_CMD_LEN) ? CYAPA_CMD_LEN : len - i;
  cmd[0] = i;
  memcpy(&cmd[1], payload, cmd_len);

  error = cyapa_i2c_reg_write_block(cyapa, 0, cmd_len + 1, cmd);
  if (error)
   return error;
 }
 return 0;
}
