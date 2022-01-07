
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ coordinateMode; } ;
struct TYPE_3__ {int modelCode; int odmCode; int firmwareCode; } ;
struct aiptek {scalar_t__ eventCount; int diagnostic; TYPE_2__ curSetting; int inputdev; TYPE_1__ features; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 scalar_t__ AIPTEK_COORDINATE_ABSOLUTE_MODE ;
 int AIPTEK_DIAGNOSTIC_NA ;
 int aiptek_command (struct aiptek*,int,int) ;
 int aiptek_query (struct aiptek*,int,int) ;
 int input_set_abs_params (int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static int aiptek_program_tablet(struct aiptek *aiptek)
{
 int ret;

 if ((ret = aiptek_command(aiptek, 0x18, 0x04)) < 0)
  return ret;


 if ((ret = aiptek_query(aiptek, 0x02, 0x00)) < 0)
  return ret;
 aiptek->features.modelCode = ret & 0xff;


 if ((ret = aiptek_query(aiptek, 0x03, 0x00)) < 0)
  return ret;
 aiptek->features.odmCode = ret;


 if ((ret = aiptek_query(aiptek, 0x04, 0x00)) < 0)
  return ret;
 aiptek->features.firmwareCode = ret;


 if ((ret = aiptek_query(aiptek, 0x01, 0x00)) < 0)
  return ret;
 input_set_abs_params(aiptek->inputdev, ABS_X, 0, ret - 1, 0, 0);


 if ((ret = aiptek_query(aiptek, 0x01, 0x01)) < 0)
  return ret;
 input_set_abs_params(aiptek->inputdev, ABS_Y, 0, ret - 1, 0, 0);


 if ((ret = aiptek_query(aiptek, 0x08, 0x00)) < 0)
  return ret;
 input_set_abs_params(aiptek->inputdev, ABS_PRESSURE, 0, ret - 1, 0, 0);




 if (aiptek->curSetting.coordinateMode ==
     AIPTEK_COORDINATE_ABSOLUTE_MODE) {

  if ((ret = aiptek_command(aiptek, 0x10, 0x01)) < 0) {
   return ret;
  }
 } else {

  if ((ret = aiptek_command(aiptek, 0x10, 0x00)) < 0) {
   return ret;
  }
 }


 if ((ret = aiptek_command(aiptek, 0x11, 0x02)) < 0)
  return ret;







 if ((ret = aiptek_command(aiptek, 0x12, 0xff)) < 0)
  return ret;



 aiptek->diagnostic = AIPTEK_DIAGNOSTIC_NA;
 aiptek->eventCount = 0;

 return 0;
}
