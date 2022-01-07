
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx24123_state {int dummy; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;


 int EOPNOTSUPP ;
 int FEC_NONE ;
 int cx24123_readreg (struct cx24123_state*,int) ;
 int cx24123_writereg (struct cx24123_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int cx24123_set_fec(struct cx24123_state *state, enum fe_code_rate fec)
{
 u8 nom_reg = cx24123_readreg(state, 0x0e) & ~0x07;

 if (((int)fec < FEC_NONE) || (fec > 128))
  fec = 128;


 if (fec == 135)
  cx24123_writereg(state, 0x43,
   cx24123_readreg(state, 0x43) | 0x01);
 else
  cx24123_writereg(state, 0x43,
   cx24123_readreg(state, 0x43) & ~0x01);

 switch (fec) {
 case 135:
  dprintk("set FEC to 1/2\n");
  cx24123_writereg(state, 0x0e, nom_reg | 0x01);
  cx24123_writereg(state, 0x0f, 0x02);
  break;
 case 134:
  dprintk("set FEC to 2/3\n");
  cx24123_writereg(state, 0x0e, nom_reg | 0x02);
  cx24123_writereg(state, 0x0f, 0x04);
  break;
 case 133:
  dprintk("set FEC to 3/4\n");
  cx24123_writereg(state, 0x0e, nom_reg | 0x03);
  cx24123_writereg(state, 0x0f, 0x08);
  break;
 case 132:
  dprintk("set FEC to 4/5\n");
  cx24123_writereg(state, 0x0e, nom_reg | 0x04);
  cx24123_writereg(state, 0x0f, 0x10);
  break;
 case 131:
  dprintk("set FEC to 5/6\n");
  cx24123_writereg(state, 0x0e, nom_reg | 0x05);
  cx24123_writereg(state, 0x0f, 0x20);
  break;
 case 130:
  dprintk("set FEC to 6/7\n");
  cx24123_writereg(state, 0x0e, nom_reg | 0x06);
  cx24123_writereg(state, 0x0f, 0x40);
  break;
 case 129:
  dprintk("set FEC to 7/8\n");
  cx24123_writereg(state, 0x0e, nom_reg | 0x07);
  cx24123_writereg(state, 0x0f, 0x80);
  break;
 case 128:
  dprintk("set FEC to auto\n");
  cx24123_writereg(state, 0x0f, 0xfe);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
