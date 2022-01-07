
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int NVKM_THERM_THRS_CRITICAL ;
 int NVKM_THERM_THRS_DOWNCLOCK ;
 int NVKM_THERM_THRS_FANBOOST ;
 int NVKM_THERM_THRS_LOWER ;
 int NVKM_THERM_THRS_SHUTDOWN ;
 int g84_therm ;
 int nvkm_therm_new_ (int *,struct nvkm_device*,int,struct nvkm_therm**) ;
 int nvkm_therm_sensor_set_threshold_state (struct nvkm_therm*,int ,int ) ;

int
g84_therm_new(struct nvkm_device *device, int index, struct nvkm_therm **ptherm)
{
 struct nvkm_therm *therm;
 int ret;

 ret = nvkm_therm_new_(&g84_therm, device, index, &therm);
 *ptherm = therm;
 if (ret)
  return ret;


 nvkm_therm_sensor_set_threshold_state(therm, NVKM_THERM_THRS_SHUTDOWN,
           NVKM_THERM_THRS_LOWER);
 nvkm_therm_sensor_set_threshold_state(therm, NVKM_THERM_THRS_FANBOOST,
           NVKM_THERM_THRS_LOWER);
 nvkm_therm_sensor_set_threshold_state(therm, NVKM_THERM_THRS_CRITICAL,
           NVKM_THERM_THRS_LOWER);
 nvkm_therm_sensor_set_threshold_state(therm, NVKM_THERM_THRS_DOWNCLOCK,
           NVKM_THERM_THRS_LOWER);
 return 0;
}
