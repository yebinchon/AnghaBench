
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int dummy; } ;
typedef int ssize_t ;


 int PIP_SENSING_MODE_MUTUAL_CAP_FINE ;
 int PIP_SENSING_MODE_SELF_CAP ;
 int cyapa_pip_calibrate_pwcs (struct cyapa*,int ) ;
 int cyapa_pip_resume_scanning (struct cyapa*) ;
 int cyapa_pip_suspend_scanning (struct cyapa*) ;
 struct cyapa* dev_get_drvdata (struct device*) ;

ssize_t cyapa_pip_do_calibrate(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct cyapa *cyapa = dev_get_drvdata(dev);
 int error, calibrate_error;


 error = cyapa_pip_suspend_scanning(cyapa);
 if (error)
  return error;


 calibrate_error = cyapa_pip_calibrate_pwcs(cyapa,
    PIP_SENSING_MODE_MUTUAL_CAP_FINE);
 if (calibrate_error)
  goto resume_scanning;


 calibrate_error = cyapa_pip_calibrate_pwcs(cyapa,
    PIP_SENSING_MODE_SELF_CAP);
 if (calibrate_error)
  goto resume_scanning;

resume_scanning:

 error = cyapa_pip_resume_scanning(cyapa);
 if (error || calibrate_error)
  return error ? error : calibrate_error;

 return count;
}
