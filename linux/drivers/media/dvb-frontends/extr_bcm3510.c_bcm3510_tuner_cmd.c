
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct bcm3510_state {int dummy; } ;
struct bcm3510_hab_cmd_tune {int length; int misc; int TUNCTL_state; TYPE_2__* ctl_dat; scalar_t__ clock_width; } ;
typedef int c ;
struct TYPE_3__ {int clk_off; int cs0; int cs1; void* size; } ;
struct TYPE_4__ {int data; TYPE_1__ ctrl; } ;


 void* BITS_3 ;
 void* BITS_8 ;
 int CMD_TUNE ;
 int MSGID_TUNE ;
 int bcm3510_do_hab_cmd (struct bcm3510_state*,int ,int ,int*,int,int *,int ) ;
 int memset (struct bcm3510_hab_cmd_tune*,int ,int) ;

__attribute__((used)) static int bcm3510_tuner_cmd(struct bcm3510_state* st,u8 bc, u16 n, u8 a)
{
 struct bcm3510_hab_cmd_tune c;
 memset(&c,0,sizeof(struct bcm3510_hab_cmd_tune));


 c.length = 0x10;
 c.clock_width = 0;


 c.misc = 0x10;

 c.TUNCTL_state = 0x40;


 c.ctl_dat[0].ctrl.size = BITS_8;
 c.ctl_dat[0].data = 0x80 | bc;


 c.ctl_dat[1].ctrl.size = BITS_8;
 c.ctl_dat[1].data = 4;


 c.ctl_dat[2].ctrl.size = BITS_3;
 c.ctl_dat[2].data = 0x20;


 c.ctl_dat[3].ctrl.size = BITS_3;
 c.ctl_dat[3].ctrl.clk_off = 1;
 c.ctl_dat[3].ctrl.cs0 = 1;
 c.ctl_dat[3].data = 0x40;


 c.ctl_dat[4].ctrl.size = BITS_8;
 c.ctl_dat[4].data = n >> 3;


 c.ctl_dat[5].ctrl.size = BITS_8;
 c.ctl_dat[5].data = ((n & 0x7) << 5) | (a >> 2);


 c.ctl_dat[6].ctrl.size = BITS_3;
 c.ctl_dat[6].data = (a << 6) & 0xdf;


 c.ctl_dat[7].ctrl.size = BITS_3;
 c.ctl_dat[7].ctrl.clk_off = 1;
 c.ctl_dat[7].ctrl.cs0 = 1;
 c.ctl_dat[7].data = 0x40;


 c.ctl_dat[8].ctrl.size = BITS_8;
 c.ctl_dat[8].data = 0x80;


 c.ctl_dat[9].ctrl.size = BITS_8;
 c.ctl_dat[9].data = 0x10;


 c.ctl_dat[10].ctrl.size = BITS_3;
 c.ctl_dat[10].data = 0x20;


 c.ctl_dat[11].ctrl.size = BITS_3;
 c.ctl_dat[11].ctrl.clk_off = 1;
 c.ctl_dat[11].ctrl.cs1 = 1;
 c.ctl_dat[11].data = 0x40;


 c.ctl_dat[12].ctrl.size = BITS_8;
 c.ctl_dat[12].data = 0x2a;


 c.ctl_dat[13].ctrl.size = BITS_8;
 c.ctl_dat[13].data = 0x8e;


 c.ctl_dat[14].ctrl.size = BITS_3;
 c.ctl_dat[14].data = 0;


 c.ctl_dat[15].ctrl.size = BITS_3;
 c.ctl_dat[15].ctrl.clk_off = 1;
 c.ctl_dat[15].ctrl.cs1 = 1;
 c.ctl_dat[15].data = 0x40;

 return bcm3510_do_hab_cmd(st,CMD_TUNE, MSGID_TUNE,(u8 *) &c,sizeof(c), ((void*)0), 0);
}
