
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int len; int flags; int buf; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int mem_mbx_lock; struct dib9000_fe_memory_map* fe_mm; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {int component_bus_speed; TYPE_2__ platform; } ;
struct dib9000_fe_memory_map {int addr; } ;


 int DIBX000_I2C_INTERFACE_GPIO_3_4 ;
 size_t FE_MM_RW_COMPONENT_ACCESS_BUFFER ;
 int FE_MM_W_COMPONENT_ACCESS ;
 int FE_SYNC_COMPONENT_ACCESS ;
 int I2C_M_RD ;
 scalar_t__ dib9000_fw_memmbx_sync (struct dib9000_state*,int ) ;
 int dib9000_risc_mem_read (struct dib9000_state*,size_t,int ,int) ;
 int dib9000_risc_mem_setup_cmd (struct dib9000_state*,int ,int,int ) ;
 int dib9000_risc_mem_write (struct dib9000_state*,int ,int*) ;
 int dib9000_risc_mem_write_chunks (struct dib9000_state*,int ,int) ;
 int dprintk (char*) ;
 struct dib9000_state* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dib9000_fw_component_bus_xfer(struct i2c_adapter *i2c_adap, struct i2c_msg msg[], int num)
{
 struct dib9000_state *state = i2c_get_adapdata(i2c_adap);
 u8 type = 0;
 u8 port = DIBX000_I2C_INTERFACE_GPIO_3_4;
 u16 scl = state->component_bus_speed;
 struct dib9000_fe_memory_map *m = &state->platform.risc.fe_mm[FE_MM_RW_COMPONENT_ACCESS_BUFFER];
 u8 p[13] = { 0 };

 p[0] = type;
 p[1] = port;
 p[2] = msg[0].addr << 1;

 p[3] = (u8) scl & 0xff;
 p[4] = (u8) (scl >> 8);

 p[7] = 0;
 p[8] = 0;

 p[9] = (u8) (msg[0].len);
 p[10] = (u8) (msg[0].len >> 8);
 if ((num > 1) && (msg[1].flags & I2C_M_RD)) {
  p[11] = (u8) (msg[1].len);
  p[12] = (u8) (msg[1].len >> 8);
 } else {
  p[11] = 0;
  p[12] = 0;
 }

 if (mutex_lock_interruptible(&state->platform.risc.mem_mbx_lock) < 0) {
  dprintk("could not get the lock\n");
  return 0;
 }

 dib9000_risc_mem_write(state, FE_MM_W_COMPONENT_ACCESS, p);

 {
  dib9000_risc_mem_setup_cmd(state, m->addr, msg[0].len, 0);
  dib9000_risc_mem_write_chunks(state, msg[0].buf, msg[0].len);
 }


 if (dib9000_fw_memmbx_sync(state, FE_SYNC_COMPONENT_ACCESS) < 0) {
  mutex_unlock(&state->platform.risc.mem_mbx_lock);
  return 0;
 }


 if ((num > 1) && (msg[1].flags & I2C_M_RD))
  dib9000_risc_mem_read(state, FE_MM_RW_COMPONENT_ACCESS_BUFFER, msg[1].buf, msg[1].len);

 mutex_unlock(&state->platform.risc.mem_mbx_lock);

 return num;
}
