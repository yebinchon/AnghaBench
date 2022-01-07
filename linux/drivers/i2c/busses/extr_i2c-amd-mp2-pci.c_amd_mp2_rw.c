
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mem_type; } ;
union i2c_cmd_base {TYPE_2__ s; } ;
typedef int u64 ;
struct amd_mp2_dev {scalar_t__ mmio; } ;
struct amd_i2c_common {scalar_t__ dma_addr; TYPE_1__* msg; struct amd_mp2_dev* mp2_dev; } ;
typedef enum i2c_cmd { ____Placeholder_i2c_cmd } i2c_cmd ;
struct TYPE_3__ {int len; int buf; } ;


 scalar_t__ AMD_C2P_MSG2 ;
 int amd_mp2_c2p_mutex_lock (struct amd_i2c_common*) ;
 int amd_mp2_cmd (struct amd_i2c_common*,union i2c_cmd_base) ;
 int amd_mp2_cmd_rw_fill (struct amd_i2c_common*,union i2c_cmd_base*,int) ;
 int i2c_write ;
 int memcpy_toio (scalar_t__,int ,int) ;
 int use_c2pmsg ;
 int use_dram ;
 int writeq (int ,scalar_t__) ;

int amd_mp2_rw(struct amd_i2c_common *i2c_common, enum i2c_cmd reqcmd)
{
 struct amd_mp2_dev *privdata = i2c_common->mp2_dev;
 union i2c_cmd_base i2c_cmd_base;

 amd_mp2_cmd_rw_fill(i2c_common, &i2c_cmd_base, reqcmd);
 amd_mp2_c2p_mutex_lock(i2c_common);

 if (i2c_common->msg->len <= 32) {
  i2c_cmd_base.s.mem_type = use_c2pmsg;
  if (reqcmd == i2c_write)
   memcpy_toio(privdata->mmio + AMD_C2P_MSG2,
        i2c_common->msg->buf,
        i2c_common->msg->len);
 } else {
  i2c_cmd_base.s.mem_type = use_dram;
  writeq((u64)i2c_common->dma_addr,
         privdata->mmio + AMD_C2P_MSG2);
 }

 return amd_mp2_cmd(i2c_common, i2c_cmd_base);
}
