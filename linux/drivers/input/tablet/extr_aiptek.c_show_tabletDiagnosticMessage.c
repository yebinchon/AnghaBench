
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int pointerMode; } ;
struct aiptek {int diagnostic; TYPE_1__ curSetting; } ;
typedef int ssize_t ;






 int AIPTEK_POINTER_ONLY_MOUSE_MODE ;
 int PAGE_SIZE ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t show_tabletDiagnosticMessage(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);
 char *retMsg;

 switch (aiptek->diagnostic) {
 case 131:
  retMsg = "no errors\n";
  break;

 case 129:
  retMsg = "Error: receiving relative reports\n";
  break;

 case 130:
  retMsg = "Error: receiving absolute reports\n";
  break;

 case 128:
  if (aiptek->curSetting.pointerMode ==
      AIPTEK_POINTER_ONLY_MOUSE_MODE) {
   retMsg = "Error: receiving stylus reports\n";
  } else {
   retMsg = "Error: receiving mouse reports\n";
  }
  break;

 default:
  return 0;
 }
 return snprintf(buf, PAGE_SIZE, retMsg);
}
