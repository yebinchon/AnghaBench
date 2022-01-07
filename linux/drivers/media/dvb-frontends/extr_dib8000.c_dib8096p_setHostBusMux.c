
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int dummy; } ;





 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dib8096p_enMpegMux (struct dib8000_state*,int ) ;
 int dprintk (char*) ;

__attribute__((used)) static void dib8096p_setHostBusMux(struct dib8000_state *state, int mode)
{
 u16 reg_1288 = dib8000_read_word(state, 1288) & ~(0x7 << 4);

 switch (mode) {
 case 130:
   dprintk("SET DEM OUT OLD INTERF ON HOST BUS\n");
   dib8096p_enMpegMux(state, 0);
   reg_1288 |= (1 << 6);
   break;
 case 129:
   dprintk("SET DIBSTREAM TX ON HOST BUS\n");
   dib8096p_enMpegMux(state, 0);
   reg_1288 |= (1 << 5);
   break;
 case 128:
   dprintk("SET MPEG MUX ON HOST BUS\n");
   reg_1288 |= (1 << 4);
   break;
 default:
   break;
 }
 dib8000_write_word(state, 1288, reg_1288);
}
