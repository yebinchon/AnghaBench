
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct st_i2c_dev {scalar_t__ base; } ;


 scalar_t__ SSC_TBUF ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void st_i2c_write_tx_fifo(struct st_i2c_dev *i2c_dev, u8 byte)
{
 u16 tbuf = byte << 1;

 writel_relaxed(tbuf | 1, i2c_dev->base + SSC_TBUF);
}
