
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {TYPE_2__* config; TYPE_1__* internal; } ;
struct TYPE_4__ {int ts1_mode; int ts2_mode; int ts1_tei; int ts2_tei; scalar_t__ ts1_clk; scalar_t__ ts2_clk; } ;
struct TYPE_3__ {int dev_ver; int mclk; } ;


 int FE_ERROR ;
 int RST_HWARE_FIELD ;
 int STV090x_P1_TSCFGH ;
 int STV090x_P1_TSCFGM ;
 int STV090x_P1_TSSPEED ;
 int STV090x_P2_TSCFGH ;
 int STV090x_P2_TSCFGM ;
 int STV090x_P2_TSSPEED ;
 int STV090x_SETFIELD_Px (int,int ,int) ;
 int STV090x_TSGENERAL ;
 int STV090x_TSGENERAL1X ;




 int TSFIFO_DVBCI_FIELD ;
 int TSFIFO_MANSPEED_FIELD ;
 int TSFIFO_SERIAL_FIELD ;
 int TSFIFO_TEIUPDATE_FIELD ;
 int dprintk (int ,int,char*) ;
 int stv090x_read_reg (struct stv090x_state*,int ) ;
 scalar_t__ stv090x_write_reg (struct stv090x_state*,int ,int) ;

__attribute__((used)) static int stv0900_set_tspath(struct stv090x_state *state)
{
 u32 reg;

 if (state->internal->dev_ver >= 0x20) {
  switch (state->config->ts1_mode) {
  case 130:
  case 131:
   switch (state->config->ts2_mode) {
   case 128:
   case 129:
   default:
    stv090x_write_reg(state, STV090x_TSGENERAL, 0x00);
    break;

   case 130:
   case 131:
    if (stv090x_write_reg(state, STV090x_TSGENERAL, 0x06) < 0)
     goto err;
    reg = stv090x_read_reg(state, STV090x_P1_TSCFGM);
    STV090x_SETFIELD_Px(reg, TSFIFO_MANSPEED_FIELD, 3);
    if (stv090x_write_reg(state, STV090x_P1_TSCFGM, reg) < 0)
     goto err;
    reg = stv090x_read_reg(state, STV090x_P2_TSCFGM);
    STV090x_SETFIELD_Px(reg, TSFIFO_MANSPEED_FIELD, 3);
    if (stv090x_write_reg(state, STV090x_P2_TSCFGM, reg) < 0)
     goto err;
    if (stv090x_write_reg(state, STV090x_P1_TSSPEED, 0x14) < 0)
     goto err;
    if (stv090x_write_reg(state, STV090x_P2_TSSPEED, 0x28) < 0)
     goto err;
    break;
   }
   break;

  case 128:
  case 129:
  default:
   switch (state->config->ts2_mode) {
   case 128:
   case 129:
   default:
    if (stv090x_write_reg(state, STV090x_TSGENERAL, 0x0c) < 0)
     goto err;
    break;

   case 130:
   case 131:
    if (stv090x_write_reg(state, STV090x_TSGENERAL, 0x0a) < 0)
     goto err;
    break;
   }
   break;
  }
 } else {
  switch (state->config->ts1_mode) {
  case 130:
  case 131:
   switch (state->config->ts2_mode) {
   case 128:
   case 129:
   default:
    stv090x_write_reg(state, STV090x_TSGENERAL1X, 0x10);
    break;

   case 130:
   case 131:
    stv090x_write_reg(state, STV090x_TSGENERAL1X, 0x16);
    reg = stv090x_read_reg(state, STV090x_P1_TSCFGM);
    STV090x_SETFIELD_Px(reg, TSFIFO_MANSPEED_FIELD, 3);
    if (stv090x_write_reg(state, STV090x_P1_TSCFGM, reg) < 0)
     goto err;
    reg = stv090x_read_reg(state, STV090x_P1_TSCFGM);
    STV090x_SETFIELD_Px(reg, TSFIFO_MANSPEED_FIELD, 0);
    if (stv090x_write_reg(state, STV090x_P1_TSCFGM, reg) < 0)
     goto err;
    if (stv090x_write_reg(state, STV090x_P1_TSSPEED, 0x14) < 0)
     goto err;
    if (stv090x_write_reg(state, STV090x_P2_TSSPEED, 0x28) < 0)
     goto err;
    break;
   }
   break;

  case 128:
  case 129:
  default:
   switch (state->config->ts2_mode) {
   case 128:
   case 129:
   default:
    stv090x_write_reg(state, STV090x_TSGENERAL1X, 0x14);
    break;

   case 130:
   case 131:
    stv090x_write_reg(state, STV090x_TSGENERAL1X, 0x12);
    break;
   }
   break;
  }
 }

 switch (state->config->ts1_mode) {
 case 130:
  reg = stv090x_read_reg(state, STV090x_P1_TSCFGH);
  STV090x_SETFIELD_Px(reg, TSFIFO_TEIUPDATE_FIELD, state->config->ts1_tei);
  STV090x_SETFIELD_Px(reg, TSFIFO_SERIAL_FIELD, 0x00);
  STV090x_SETFIELD_Px(reg, TSFIFO_DVBCI_FIELD, 0x00);
  if (stv090x_write_reg(state, STV090x_P1_TSCFGH, reg) < 0)
   goto err;
  break;

 case 131:
  reg = stv090x_read_reg(state, STV090x_P1_TSCFGH);
  STV090x_SETFIELD_Px(reg, TSFIFO_TEIUPDATE_FIELD, state->config->ts1_tei);
  STV090x_SETFIELD_Px(reg, TSFIFO_SERIAL_FIELD, 0x00);
  STV090x_SETFIELD_Px(reg, TSFIFO_DVBCI_FIELD, 0x01);
  if (stv090x_write_reg(state, STV090x_P1_TSCFGH, reg) < 0)
   goto err;
  break;

 case 128:
  reg = stv090x_read_reg(state, STV090x_P1_TSCFGH);
  STV090x_SETFIELD_Px(reg, TSFIFO_TEIUPDATE_FIELD, state->config->ts1_tei);
  STV090x_SETFIELD_Px(reg, TSFIFO_SERIAL_FIELD, 0x01);
  STV090x_SETFIELD_Px(reg, TSFIFO_DVBCI_FIELD, 0x00);
  if (stv090x_write_reg(state, STV090x_P1_TSCFGH, reg) < 0)
   goto err;
  break;

 case 129:
  reg = stv090x_read_reg(state, STV090x_P1_TSCFGH);
  STV090x_SETFIELD_Px(reg, TSFIFO_TEIUPDATE_FIELD, state->config->ts1_tei);
  STV090x_SETFIELD_Px(reg, TSFIFO_SERIAL_FIELD, 0x01);
  STV090x_SETFIELD_Px(reg, TSFIFO_DVBCI_FIELD, 0x01);
  if (stv090x_write_reg(state, STV090x_P1_TSCFGH, reg) < 0)
   goto err;
  break;

 default:
  break;
 }

 switch (state->config->ts2_mode) {
 case 130:
  reg = stv090x_read_reg(state, STV090x_P2_TSCFGH);
  STV090x_SETFIELD_Px(reg, TSFIFO_TEIUPDATE_FIELD, state->config->ts2_tei);
  STV090x_SETFIELD_Px(reg, TSFIFO_SERIAL_FIELD, 0x00);
  STV090x_SETFIELD_Px(reg, TSFIFO_DVBCI_FIELD, 0x00);
  if (stv090x_write_reg(state, STV090x_P2_TSCFGH, reg) < 0)
   goto err;
  break;

 case 131:
  reg = stv090x_read_reg(state, STV090x_P2_TSCFGH);
  STV090x_SETFIELD_Px(reg, TSFIFO_TEIUPDATE_FIELD, state->config->ts2_tei);
  STV090x_SETFIELD_Px(reg, TSFIFO_SERIAL_FIELD, 0x00);
  STV090x_SETFIELD_Px(reg, TSFIFO_DVBCI_FIELD, 0x01);
  if (stv090x_write_reg(state, STV090x_P2_TSCFGH, reg) < 0)
   goto err;
  break;

 case 128:
  reg = stv090x_read_reg(state, STV090x_P2_TSCFGH);
  STV090x_SETFIELD_Px(reg, TSFIFO_TEIUPDATE_FIELD, state->config->ts2_tei);
  STV090x_SETFIELD_Px(reg, TSFIFO_SERIAL_FIELD, 0x01);
  STV090x_SETFIELD_Px(reg, TSFIFO_DVBCI_FIELD, 0x00);
  if (stv090x_write_reg(state, STV090x_P2_TSCFGH, reg) < 0)
   goto err;
  break;

 case 129:
  reg = stv090x_read_reg(state, STV090x_P2_TSCFGH);
  STV090x_SETFIELD_Px(reg, TSFIFO_TEIUPDATE_FIELD, state->config->ts2_tei);
  STV090x_SETFIELD_Px(reg, TSFIFO_SERIAL_FIELD, 0x01);
  STV090x_SETFIELD_Px(reg, TSFIFO_DVBCI_FIELD, 0x01);
  if (stv090x_write_reg(state, STV090x_P2_TSCFGH, reg) < 0)
   goto err;
  break;

 default:
  break;
 }

 if (state->config->ts1_clk > 0) {
  u32 speed;

  switch (state->config->ts1_mode) {
  case 130:
  case 131:
  default:
   speed = state->internal->mclk /
    (state->config->ts1_clk / 4);
   if (speed < 0x08)
    speed = 0x08;
   if (speed > 0xFF)
    speed = 0xFF;
   break;
  case 128:
  case 129:
   speed = state->internal->mclk /
    (state->config->ts1_clk / 32);
   if (speed < 0x20)
    speed = 0x20;
   if (speed > 0xFF)
    speed = 0xFF;
   break;
  }
  reg = stv090x_read_reg(state, STV090x_P1_TSCFGM);
  STV090x_SETFIELD_Px(reg, TSFIFO_MANSPEED_FIELD, 3);
  if (stv090x_write_reg(state, STV090x_P1_TSCFGM, reg) < 0)
   goto err;
  if (stv090x_write_reg(state, STV090x_P1_TSSPEED, speed) < 0)
   goto err;
 }

 if (state->config->ts2_clk > 0) {
  u32 speed;

  switch (state->config->ts2_mode) {
  case 130:
  case 131:
  default:
   speed = state->internal->mclk /
    (state->config->ts2_clk / 4);
   if (speed < 0x08)
    speed = 0x08;
   if (speed > 0xFF)
    speed = 0xFF;
   break;
  case 128:
  case 129:
   speed = state->internal->mclk /
    (state->config->ts2_clk / 32);
   if (speed < 0x20)
    speed = 0x20;
   if (speed > 0xFF)
    speed = 0xFF;
   break;
  }
  reg = stv090x_read_reg(state, STV090x_P2_TSCFGM);
  STV090x_SETFIELD_Px(reg, TSFIFO_MANSPEED_FIELD, 3);
  if (stv090x_write_reg(state, STV090x_P2_TSCFGM, reg) < 0)
   goto err;
  if (stv090x_write_reg(state, STV090x_P2_TSSPEED, speed) < 0)
   goto err;
 }

 reg = stv090x_read_reg(state, STV090x_P2_TSCFGH);
 STV090x_SETFIELD_Px(reg, RST_HWARE_FIELD, 0x01);
 if (stv090x_write_reg(state, STV090x_P2_TSCFGH, reg) < 0)
  goto err;
 STV090x_SETFIELD_Px(reg, RST_HWARE_FIELD, 0x00);
 if (stv090x_write_reg(state, STV090x_P2_TSCFGH, reg) < 0)
  goto err;

 reg = stv090x_read_reg(state, STV090x_P1_TSCFGH);
 STV090x_SETFIELD_Px(reg, RST_HWARE_FIELD, 0x01);
 if (stv090x_write_reg(state, STV090x_P1_TSCFGH, reg) < 0)
  goto err;
 STV090x_SETFIELD_Px(reg, RST_HWARE_FIELD, 0x00);
 if (stv090x_write_reg(state, STV090x_P1_TSCFGH, reg) < 0)
  goto err;

 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
