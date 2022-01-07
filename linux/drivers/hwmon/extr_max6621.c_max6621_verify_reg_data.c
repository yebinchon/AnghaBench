
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EIO ;
 int EOPNOTSUPP ;

 int MAX6621_PECI_ERR_MAX ;
 int MAX6621_PECI_ERR_MIN ;




 int dev_dbg (struct device*,char*,int) ;

__attribute__((used)) static int max6621_verify_reg_data(struct device *dev, int regval)
{
 if (regval >= MAX6621_PECI_ERR_MIN &&
     regval <= MAX6621_PECI_ERR_MAX) {
  dev_dbg(dev, "PECI error code - err 0x%04x.\n",
   regval);

  return -EIO;
 }

 switch (regval) {
 case 128:
  dev_dbg(dev, "PECI transaction failed - err 0x%04x.\n",
   regval);
  return -EIO;
 case 131:
  dev_dbg(dev, "Polling disabled - err 0x%04x.\n", regval);
  return -EOPNOTSUPP;
 case 130:
  dev_dbg(dev, "First poll not completed on startup - err 0x%04x.\n",
   regval);
  return -EIO;
 case 129:
  dev_dbg(dev, "Resource is disabled - err 0x%04x.\n", regval);
  return -EOPNOTSUPP;
 case 132:
  dev_dbg(dev, "No alert active - err 0x%04x.\n", regval);
  return -EOPNOTSUPP;
 default:
  return 0;
 }
}
