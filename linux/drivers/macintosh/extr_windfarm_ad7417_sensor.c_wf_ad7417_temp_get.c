
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wf_sensor {struct wf_ad7417_priv* priv; } ;
struct wf_ad7417_priv {int lock; int i2c; } ;
typedef int s32 ;
typedef scalar_t__ s16 ;
typedef int __le16 ;


 scalar_t__ be16_to_cpup (int *) ;
 int i2c_master_recv (int ,scalar_t__*,int) ;
 int i2c_master_send (int ,scalar_t__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int wf_ad7417_temp_get(struct wf_sensor *sr, s32 *value)
{
 struct wf_ad7417_priv *pv = sr->priv;
 u8 buf[2];
 s16 raw;
 int rc;

 *value = 0;
 mutex_lock(&pv->lock);


 buf[0] = 0;
 rc = i2c_master_send(pv->i2c, buf, 1);
 if (rc < 0)
  goto error;
 rc = i2c_master_recv(pv->i2c, buf, 2);
 if (rc < 0)
  goto error;


 raw = be16_to_cpup((__le16 *)buf);


 *value = ((s32)raw) << 8;

 mutex_unlock(&pv->lock);
 return 0;

error:
 mutex_unlock(&pv->lock);
 return -1;
}
