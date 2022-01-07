
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wf_sensor {int name; struct wf_ad7417_priv* priv; } ;
struct wf_ad7417_priv {int config; int lock; TYPE_1__* i2c; struct wf_sensor* sensors; } ;
typedef int s32 ;
typedef int __le16 ;
struct TYPE_3__ {int dev; } ;


 int be16_to_cpup (int *) ;
 int dev_dbg (int *,char*,int) ;
 int dev_vdbg (int *,char*,int,int ,int,int ) ;
 int i2c_master_recv (TYPE_1__*,int*,int) ;
 int i2c_master_send (TYPE_1__*,int*,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wf_ad7417_adc_convert (struct wf_ad7417_priv*,int,int,int *) ;

__attribute__((used)) static int wf_ad7417_adc_get(struct wf_sensor *sr, s32 *value)
{
 struct wf_ad7417_priv *pv = sr->priv;
 int chan = sr - pv->sensors;
 int i, rc;
 u8 buf[2];
 u16 raw;

 *value = 0;
 mutex_lock(&pv->lock);
 for (i = 0; i < 10; i++) {

  buf[0] = 1;
  buf[1] = (pv->config & 0x1f) | (chan << 5);
  rc = i2c_master_send(pv->i2c, buf, 2);
  if (rc < 0)
   goto error;


  msleep(1);


  buf[0] = 4;
  rc = i2c_master_send(pv->i2c, buf, 1);
  if (rc < 0)
   goto error;


  rc = i2c_master_recv(pv->i2c, buf, 2);
  if (rc < 0)
   goto error;


  raw = be16_to_cpup((__le16 *)buf) >> 6;
  wf_ad7417_adc_convert(pv, chan, raw, value);

  dev_vdbg(&pv->i2c->dev, "ADC chan %d [%s]"
    " raw value: 0x%x, conv to: 0x%08x\n",
    chan, sr->name, raw, *value);

  mutex_unlock(&pv->lock);
  return 0;

 error:
  dev_dbg(&pv->i2c->dev,
     "Error reading ADC, try %d...\n", i);
  if (i < 9)
   msleep(10);
 }
 mutex_unlock(&pv->lock);
 return -1;
}
