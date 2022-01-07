
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct itd1000_state {int dummy; } ;
struct TYPE_3__ {scalar_t__ symbol_rate; int pgaext; int bbgvmin; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BBGVMIN ;
 int BW ;
 int CON1 ;
 int PLLFH ;
 TYPE_1__* itd1000_lpf_pga ;
 int itd1000_read_reg (struct itd1000_state*,int ) ;
 int itd1000_write_reg (struct itd1000_state*,int ,int) ;
 int itd_dbg (char*,int,...) ;

__attribute__((used)) static void itd1000_set_lpf_bw(struct itd1000_state *state, u32 symbol_rate)
{
 u8 i;
 u8 con1 = itd1000_read_reg(state, CON1) & 0xfd;
 u8 pllfh = itd1000_read_reg(state, PLLFH) & 0x0f;
 u8 bbgvmin = itd1000_read_reg(state, BBGVMIN) & 0xf0;
 u8 bw = itd1000_read_reg(state, BW) & 0xf0;

 itd_dbg("symbol_rate = %d\n", symbol_rate);


 itd1000_write_reg(state, CON1, con1 | (1 << 1));

 for (i = 0; i < ARRAY_SIZE(itd1000_lpf_pga); i++)
  if (symbol_rate < itd1000_lpf_pga[i].symbol_rate) {
   itd_dbg("symrate: index: %d pgaext: %x, bbgvmin: %x\n", i, itd1000_lpf_pga[i].pgaext, itd1000_lpf_pga[i].bbgvmin);
   itd1000_write_reg(state, PLLFH, pllfh | (itd1000_lpf_pga[i].pgaext << 4));
   itd1000_write_reg(state, BBGVMIN, bbgvmin | (itd1000_lpf_pga[i].bbgvmin));
   itd1000_write_reg(state, BW, bw | (i & 0x0f));
   break;
  }

 itd1000_write_reg(state, CON1, con1 | (0 << 1));
}
