
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
struct alps_data {int dummy; } ;
typedef int otp ;


 scalar_t__ alps_get_otp_values_ss4_v2 (struct psmouse*,int,unsigned char*) ;
 int alps_update_btn_info_ss4_v2 (unsigned char**,struct alps_data*) ;
 int alps_update_device_area_ss4_v2 (unsigned char**,struct alps_data*) ;
 int alps_update_dual_info_ss4_v2 (unsigned char**,struct alps_data*,struct psmouse*) ;
 int memset (unsigned char**,int ,int) ;

__attribute__((used)) static int alps_set_defaults_ss4_v2(struct psmouse *psmouse,
        struct alps_data *priv)
{
 unsigned char otp[2][4];

 memset(otp, 0, sizeof(otp));

 if (alps_get_otp_values_ss4_v2(psmouse, 1, &otp[1][0]) ||
     alps_get_otp_values_ss4_v2(psmouse, 0, &otp[0][0]))
  return -1;

 alps_update_device_area_ss4_v2(otp, priv);

 alps_update_btn_info_ss4_v2(otp, priv);

 alps_update_dual_info_ss4_v2(otp, priv, psmouse);

 return 0;
}
