
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct octeon_i2c {scalar_t__ twsi_base; } ;


 scalar_t__ TWSI_INT (struct octeon_i2c*) ;
 int octeon_i2c_writeq_flush (int ,scalar_t__) ;

__attribute__((used)) static inline void octeon_i2c_write_int(struct octeon_i2c *i2c, u64 data)
{
 octeon_i2c_writeq_flush(data, i2c->twsi_base + TWSI_INT(i2c));
}
