
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2c {scalar_t__ raw_timeout; } ;


 int INT_TIMING ;
 unsigned int img_i2c_raw_atomic_delay_handler (struct img_i2c*,int,int) ;

__attribute__((used)) static unsigned int img_i2c_raw(struct img_i2c *i2c, u32 int_status,
    u32 line_status)
{
 if (int_status & INT_TIMING) {
  if (i2c->raw_timeout == 0)
   return img_i2c_raw_atomic_delay_handler(i2c,
    int_status, line_status);
  --i2c->raw_timeout;
 }
 return 0;
}
