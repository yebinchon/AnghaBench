
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
union hdmi_infoframe {TYPE_2__ any; } ;
typedef int u8 ;
typedef int u16 ;
struct tda998x_priv {TYPE_1__* hdmi; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;
struct TYPE_3__ {int dev; } ;


 int MAX_WRITE_RANGE_BUF ;
 int REG_DIP_IF_FLAGS ;
 int dev_err (int *,char*,int ,scalar_t__) ;
 scalar_t__ hdmi_infoframe_pack (union hdmi_infoframe*,int *,int) ;
 int reg_clear (struct tda998x_priv*,int ,int ) ;
 int reg_set (struct tda998x_priv*,int ,int ) ;
 int reg_write_range (struct tda998x_priv*,int ,int *,scalar_t__) ;

__attribute__((used)) static void
tda998x_write_if(struct tda998x_priv *priv, u8 bit, u16 addr,
   union hdmi_infoframe *frame)
{
 u8 buf[MAX_WRITE_RANGE_BUF];
 ssize_t len;

 len = hdmi_infoframe_pack(frame, buf, sizeof(buf));
 if (len < 0) {
  dev_err(&priv->hdmi->dev,
   "hdmi_infoframe_pack() type=0x%02x failed: %zd\n",
   frame->any.type, len);
  return;
 }

 reg_clear(priv, REG_DIP_IF_FLAGS, bit);
 reg_write_range(priv, addr, buf, len);
 reg_set(priv, REG_DIP_IF_FLAGS, bit);
}
