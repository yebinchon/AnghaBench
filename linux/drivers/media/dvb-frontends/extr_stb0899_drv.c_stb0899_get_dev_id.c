
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct stb0899_state {int verbose; } ;


 int CHIP_ID ;
 int CHIP_REL ;
 int CONVERT32 (scalar_t__,char*) ;
 int DMD_CORE_ID ;
 int DMD_VERSION_ID ;
 int ENODEV ;
 int FEC_CORE_ID_REG ;
 int FEC_VER_ID_REG ;
 int FE_DEBUG ;
 int FE_ERROR ;
 int STB0899_DEV_ID ;
 scalar_t__ STB0899_GETFIELD (int ,int ) ;
 scalar_t__ STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_S2FEC ;
 int dprintk (int ,int ,int,char*,...) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;

__attribute__((used)) static int stb0899_get_dev_id(struct stb0899_state *state)
{
 u8 chip_id, release;
 u16 id;
 u32 demod_ver = 0, fec_ver = 0;
 char demod_str[5] = { 0 };
 char fec_str[5] = { 0 };

 id = stb0899_read_reg(state, STB0899_DEV_ID);
 dprintk(state->verbose, FE_DEBUG, 1, "ID reg=[0x%02x]", id);
 chip_id = STB0899_GETFIELD(CHIP_ID, id);
 release = STB0899_GETFIELD(CHIP_REL, id);

 dprintk(state->verbose, FE_ERROR, 1, "Device ID=[%d], Release=[%d]",
  chip_id, release);

 CONVERT32(STB0899_READ_S2REG(STB0899_S2DEMOD, DMD_CORE_ID), (char *)&demod_str);

 demod_ver = STB0899_READ_S2REG(STB0899_S2DEMOD, DMD_VERSION_ID);
 dprintk(state->verbose, FE_ERROR, 1, "Demodulator Core ID=[%s], Version=[%d]", (char *) &demod_str, demod_ver);
 CONVERT32(STB0899_READ_S2REG(STB0899_S2FEC, FEC_CORE_ID_REG), (char *)&fec_str);
 fec_ver = STB0899_READ_S2REG(STB0899_S2FEC, FEC_VER_ID_REG);
 if (! (chip_id > 0)) {
  dprintk(state->verbose, FE_ERROR, 1, "couldn't find a STB 0899");

  return -ENODEV;
 }
 dprintk(state->verbose, FE_ERROR, 1, "FEC Core ID=[%s], Version=[%d]", (char*) &fec_str, fec_ver);

 return 0;
}
