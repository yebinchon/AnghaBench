
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {scalar_t__ twsi_base; } ;


 scalar_t__ TWSI_INT_ENA_W1C ;
 int TWSI_INT_ST_INT ;
 int TWSI_INT_TS_INT ;
 int octeon_i2c_writeq_flush (int,scalar_t__) ;

__attribute__((used)) static void thunder_i2c_hlc_int_disable(struct octeon_i2c *i2c)
{
 octeon_i2c_writeq_flush(TWSI_INT_ST_INT | TWSI_INT_TS_INT,
    i2c->twsi_base + TWSI_INT_ENA_W1C);
}
