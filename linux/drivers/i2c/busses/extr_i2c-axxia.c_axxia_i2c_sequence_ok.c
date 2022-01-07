
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {scalar_t__ len; scalar_t__ addr; } ;


 scalar_t__ FIFO_SIZE ;
 int SEQ_LEN ;
 scalar_t__ i2c_m_rd (struct i2c_msg*) ;

__attribute__((used)) static bool axxia_i2c_sequence_ok(struct i2c_msg msgs[], int num)
{
 return num == SEQ_LEN && !i2c_m_rd(&msgs[0]) && i2c_m_rd(&msgs[1]) &&
        msgs[0].len > 0 && msgs[0].len <= FIFO_SIZE &&
        msgs[1].len > 0 && msgs[0].addr == msgs[1].addr;
}
