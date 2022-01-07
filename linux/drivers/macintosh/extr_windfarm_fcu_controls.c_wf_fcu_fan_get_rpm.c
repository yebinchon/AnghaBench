
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_fcu_priv {int rpm_shift; } ;
struct wf_fcu_fan {int id; struct wf_fcu_priv* fcu_priv; } ;
struct wf_control {struct wf_fcu_fan* priv; } ;
typedef unsigned char s32 ;


 int EFAULT ;
 int EIO ;
 int ENXIO ;
 int wf_fcu_read_reg (struct wf_fcu_priv*,int,unsigned char*,int) ;

__attribute__((used)) static int wf_fcu_fan_get_rpm(struct wf_control *ct, s32 *value)
{
 struct wf_fcu_fan *fan = ct->priv;
 struct wf_fcu_priv *pv = fan->fcu_priv;
 int rc, reg_base, shift = pv->rpm_shift;
 unsigned char failure;
 unsigned char active;
 unsigned char buf[2];

 rc = wf_fcu_read_reg(pv, 0xb, &failure, 1);
 if (rc != 1)
  return -EIO;
 if ((failure & (1 << fan->id)) != 0)
  return -EFAULT;
 rc = wf_fcu_read_reg(pv, 0xd, &active, 1);
 if (rc != 1)
  return -EIO;
 if ((active & (1 << fan->id)) == 0)
  return -ENXIO;





 reg_base = 0x10;

 rc = wf_fcu_read_reg(pv, reg_base + (fan->id * 2), buf, 2);
 if (rc != 2)
  return -EIO;

 *value = (buf[0] << (8 - shift)) | buf[1] >> shift;

 return 0;
}
