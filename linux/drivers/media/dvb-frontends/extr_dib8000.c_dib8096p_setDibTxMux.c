
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int dummy; } ;





 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dib8096p_cfg_DibTx (struct dib8000_state*,int,int,int,int ,int ,int ) ;
 int dprintk (char*) ;

__attribute__((used)) static void dib8096p_setDibTxMux(struct dib8000_state *state, int mode)
{
 u16 reg_1288 = dib8000_read_word(state, 1288) & ~(0x7 << 7);

 switch (mode) {
 case 128:
   dprintk("SET MPEG ON DIBSTREAM TX\n");
   dib8096p_cfg_DibTx(state, 8, 5, 0, 0, 0, 0);
   reg_1288 |= (1 << 9); break;
 case 129:
   dprintk("SET DIV_OUT ON DIBSTREAM TX\n");
   dib8096p_cfg_DibTx(state, 5, 5, 0, 0, 0, 0);
   reg_1288 |= (1 << 8); break;
 case 130:
   dprintk("SET ADC_OUT ON DIBSTREAM TX\n");
   dib8096p_cfg_DibTx(state, 20, 5, 10, 0, 0, 0);
   reg_1288 |= (1 << 7); break;
 default:
   break;
 }
 dib8000_write_word(state, 1288, reg_1288);
}
