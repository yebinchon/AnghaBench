
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {struct sp2* data; int poll_slot_status; int slot_ts_enable; int slot_shutdown; int slot_reset; int write_cam_control; int read_cam_control; int write_attribute_mem; int read_attribute_mem; int owner; } ;
struct sp2 {TYPE_1__* client; TYPE_2__ ca; int dvb_adap; scalar_t__ module_access_type; } ;
struct TYPE_3__ {int dev; } ;


 int THIS_MODULE ;
 int dev_dbg (int *,char*,...) ;
 int dvb_ca_en50221_init (int ,TYPE_2__*,int ,int) ;
 int sp2_ci_poll_slot_status ;
 int sp2_ci_read_attribute_mem ;
 int sp2_ci_read_cam_control ;
 int sp2_ci_slot_reset ;
 int sp2_ci_slot_shutdown ;
 int sp2_ci_slot_ts_enable ;
 int sp2_ci_write_attribute_mem ;
 int sp2_ci_write_cam_control ;
 int sp2_write_i2c (struct sp2*,int,int*,int) ;

__attribute__((used)) static int sp2_init(struct sp2 *s)
{
 int ret = 0;
 u8 buf;
 u8 cimax_init[34] = {
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x44,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x44,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x02,
  0x01,
  0x00,
  0x00,
  0x00,
  0x05,
  0x00,
  0x04,
  0x00,
  0x22,
  0x00,
 };

 dev_dbg(&s->client->dev, "\n");

 s->ca.owner = THIS_MODULE;
 s->ca.read_attribute_mem = sp2_ci_read_attribute_mem;
 s->ca.write_attribute_mem = sp2_ci_write_attribute_mem;
 s->ca.read_cam_control = sp2_ci_read_cam_control;
 s->ca.write_cam_control = sp2_ci_write_cam_control;
 s->ca.slot_reset = sp2_ci_slot_reset;
 s->ca.slot_shutdown = sp2_ci_slot_shutdown;
 s->ca.slot_ts_enable = sp2_ci_slot_ts_enable;
 s->ca.poll_slot_status = sp2_ci_poll_slot_status;
 s->ca.data = s;
 s->module_access_type = 0;


 ret = sp2_write_i2c(s, 0x00, &cimax_init[0], 34);
 if (ret)
  goto err;


 buf = 1;
 ret = sp2_write_i2c(s, 0x1f, &buf, 1);
 if (ret)
  goto err;


 ret = sp2_write_i2c(s, 0x18, &buf, 1);
 if (ret)
  goto err;

 ret = dvb_ca_en50221_init(s->dvb_adap, &s->ca, 0, 1);
 if (ret)
  goto err;

 return 0;

err:
 dev_dbg(&s->client->dev, "init failed=%d\n", ret);
 return ret;
}
