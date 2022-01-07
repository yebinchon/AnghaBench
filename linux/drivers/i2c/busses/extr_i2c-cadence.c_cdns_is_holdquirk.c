
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_i2c {scalar_t__ curr_recv_count; } ;


 scalar_t__ CDNS_I2C_FIFO_DEPTH ;

__attribute__((used)) static inline bool cdns_is_holdquirk(struct cdns_i2c *id, bool hold_wrkaround)
{
 return (hold_wrkaround &&
  (id->curr_recv_count == CDNS_I2C_FIFO_DEPTH + 1));
}
