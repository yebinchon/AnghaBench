
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_cvp_conf {int (* write_data ) (struct altera_cvp_conf*,int const) ;} ;


 int BIT (int) ;
 int stub1 (struct altera_cvp_conf*,int const) ;
 int stub2 (struct altera_cvp_conf*,int const) ;

__attribute__((used)) static int altera_cvp_send_block(struct altera_cvp_conf *conf,
     const u32 *data, size_t len)
{
 u32 mask, words = len / sizeof(u32);
 int i, remainder;

 for (i = 0; i < words; i++)
  conf->write_data(conf, *data++);


 remainder = len % sizeof(u32);
 if (remainder) {
  mask = BIT(remainder * 8) - 1;
  if (mask)
   conf->write_data(conf, *data & mask);
 }

 return 0;
}
