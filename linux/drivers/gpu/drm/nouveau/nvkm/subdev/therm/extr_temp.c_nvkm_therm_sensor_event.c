
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_4__ {int (* pause ) (struct nvkm_therm*,int) ;int (* downclock ) (struct nvkm_therm*,int) ;} ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_therm {TYPE_2__ emergency; TYPE_1__* func; struct nvkm_subdev subdev; } ;
typedef enum nvkm_therm_thrs_direction { ____Placeholder_nvkm_therm_thrs_direction } nvkm_therm_thrs_direction ;
typedef enum nvkm_therm_thrs { ____Placeholder_nvkm_therm_thrs } nvkm_therm_thrs ;
struct TYPE_3__ {int (* temp_get ) (struct nvkm_therm*) ;} ;


 int GFP_ATOMIC ;
 int INIT_WORK (struct work_struct*,int ) ;
 int NVKM_THERM_CTRL_AUTO ;


 int NVKM_THERM_THRS_FALLING ;


 int NVKM_THERM_THRS_RISING ;

 struct work_struct* kmalloc (int,int ) ;
 int nv_poweroff_work ;
 int nvkm_info (struct nvkm_subdev*,char*,int,char const* const) ;
 int nvkm_therm_fan_mode (struct nvkm_therm*,int ) ;
 int nvkm_therm_fan_set (struct nvkm_therm*,int,int) ;
 int schedule_work (struct work_struct*) ;
 int stub1 (struct nvkm_therm*) ;
 int stub2 (struct nvkm_therm*,int) ;
 int stub3 (struct nvkm_therm*,int) ;

void
nvkm_therm_sensor_event(struct nvkm_therm *therm, enum nvkm_therm_thrs thrs,
   enum nvkm_therm_thrs_direction dir)
{
 struct nvkm_subdev *subdev = &therm->subdev;
 bool active;
 static const char * const thresholds[] = {
  "fanboost", "downclock", "critical", "shutdown"
 };
 int temperature = therm->func->temp_get(therm);

 if (thrs < 0 || thrs > 3)
  return;

 if (dir == NVKM_THERM_THRS_FALLING)
  nvkm_info(subdev,
     "temperature (%i C) went below the '%s' threshold\n",
     temperature, thresholds[thrs]);
 else
  nvkm_info(subdev, "temperature (%i C) hit the '%s' threshold\n",
     temperature, thresholds[thrs]);

 active = (dir == NVKM_THERM_THRS_RISING);
 switch (thrs) {
 case 130:
  if (active) {
   nvkm_therm_fan_set(therm, 1, 100);
   nvkm_therm_fan_mode(therm, NVKM_THERM_CTRL_AUTO);
  }
  break;
 case 131:
  if (therm->emergency.downclock)
   therm->emergency.downclock(therm, active);
  break;
 case 132:
  if (therm->emergency.pause)
   therm->emergency.pause(therm, active);
  break;
 case 128:
  if (active) {
   struct work_struct *work;

   work = kmalloc(sizeof(*work), GFP_ATOMIC);
   if (work) {
    INIT_WORK(work, nv_poweroff_work);
    schedule_work(work);
   }
  }
  break;
 case 129:
  break;
 }

}
