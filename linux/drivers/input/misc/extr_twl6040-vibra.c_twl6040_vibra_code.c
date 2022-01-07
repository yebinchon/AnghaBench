
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TWL6040_VIBDAT_MAX ;
 int TWL6040_VIBRA_MOD ;
 int USHRT_MAX ;

__attribute__((used)) static u8 twl6040_vibra_code(int vddvib, int vibdrv_res, int motor_res,
        int speed, int direction)
{
 int vpk, max_code;
 u8 vibdat;


 vpk = (vddvib * motor_res * TWL6040_VIBRA_MOD) /
  (100 * (vibdrv_res + motor_res));


 max_code = vpk / 50;
 if (max_code > TWL6040_VIBDAT_MAX)
  max_code = TWL6040_VIBDAT_MAX;


 vibdat = (u8)((speed * max_code) / USHRT_MAX);


 vibdat *= direction;

 return vibdat;
}
