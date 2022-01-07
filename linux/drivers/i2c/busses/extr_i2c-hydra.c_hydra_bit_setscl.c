
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HYDRA_SCLK ;
 int HYDRA_SCLK_OE ;
 int pdregr (void*) ;
 int pdregw (void*,int ) ;

__attribute__((used)) static void hydra_bit_setscl(void *data, int state)
{
 u32 val = pdregr(data);
 if (state)
  val &= ~HYDRA_SCLK_OE;
 else {
  val &= ~HYDRA_SCLK;
  val |= HYDRA_SCLK_OE;
 }
 pdregw(data, val);
}
