
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib0090_fw_state* tuner_priv; } ;
struct dib0090_identity {int p1g; int in_soc; int version; int product; } ;
struct dib0090_fw_state {struct dib0090_identity identity; } ;


 int EIO ;
 int KROSUS ;
 int KROSUS_PLL_LOCKED ;
 int SOC ;




 int dib0090_fw_read_reg (struct dib0090_fw_state*,int) ;
 int dprintk (char*,...) ;

__attribute__((used)) static int dib0090_fw_identify(struct dvb_frontend *fe)
{
 struct dib0090_fw_state *state = fe->tuner_priv;
 struct dib0090_identity *identity = &state->identity;

 u16 v = dib0090_fw_read_reg(state, 0x1a);
 identity->p1g = 0;
 identity->in_soc = 0;

 dprintk("FE: Tuner identification (Version = 0x%04x)\n", v);


 v &= ~KROSUS_PLL_LOCKED;

 identity->version = v & 0xff;
 identity->product = (v >> 8) & 0xf;

 if (identity->product != KROSUS)
  goto identification_error;

 if ((identity->version & 0x3) == SOC) {
  identity->in_soc = 1;
  switch (identity->version) {
  case 129:
   dprintk("SOC 8090 P1-G11R1 Has been detected\n");
   identity->p1g = 1;
   break;
  case 128:
   dprintk("SOC 8090 P1-G21R1 Has been detected\n");
   identity->p1g = 1;
   break;
  case 131:
   dprintk("SOC 7090 P1-G11R1 Has been detected\n");
   identity->p1g = 1;
   break;
  case 130:
   dprintk("SOC 7090 P1-G21R1 Has been detected\n");
   identity->p1g = 1;
   break;
  default:
   goto identification_error;
  }
 } else {
  switch ((identity->version >> 5) & 0x7) {
  case 140:
   dprintk("MP001 : 9090/8096\n");
   break;
  case 139:
   dprintk("MP005 : Single Sband\n");
   break;
  case 138:
   dprintk("MP008 : diversity VHF-UHF-LBAND\n");
   break;
  case 137:
   dprintk("MP009 : diversity 29098 CBAND-UHF-LBAND-SBAND\n");
   break;
  default:
   goto identification_error;
  }

  switch (identity->version & 0x1f) {
  case 132:
   dprintk("P1G_21R2 detected\n");
   identity->p1g = 1;
   break;
  case 133:
   dprintk("P1G detected\n");
   identity->p1g = 1;
   break;
  case 134:
   dprintk("P1D/E/F detected\n");
   break;
  case 135:
   dprintk("P1C detected\n");
   break;
  case 136:
   dprintk("P1-A/B detected: driver is deactivated - not available\n");
   goto identification_error;
   break;
  default:
   goto identification_error;
  }
 }

 return 0;

identification_error:
 return -EIO;
}
