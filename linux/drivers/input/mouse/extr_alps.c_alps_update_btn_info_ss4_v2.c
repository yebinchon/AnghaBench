
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alps_data {int flags; int dev_id; } ;


 int ALPS_BUTTONPAD ;
 scalar_t__ IS_SS4PLUS_DEV (int ) ;

__attribute__((used)) static int alps_update_btn_info_ss4_v2(unsigned char otp[][4],
           struct alps_data *priv)
{
 unsigned char is_btnless;

 if (IS_SS4PLUS_DEV(priv->dev_id))
  is_btnless = (otp[1][0] >> 1) & 0x01;
 else
  is_btnless = (otp[1][1] >> 3) & 0x01;

 if (is_btnless)
  priv->flags |= ALPS_BUTTONPAD;

 return 0;
}
