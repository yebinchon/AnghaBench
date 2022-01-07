
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic8xxx_kp {int dev; int regmap; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int KEYP_CLOCK_FREQ ;
 int KEYP_SCAN ;
 int USEC_PER_SEC ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int pmic8xxx_chk_sync_read(struct pmic8xxx_kp *kp)
{
 int rc;
 unsigned int scan_val;

 rc = regmap_read(kp->regmap, KEYP_SCAN, &scan_val);
 if (rc < 0) {
  dev_err(kp->dev, "Error reading KEYP_SCAN reg, rc=%d\n", rc);
  return rc;
 }

 scan_val |= 0x1;

 rc = regmap_write(kp->regmap, KEYP_SCAN, scan_val);
 if (rc < 0) {
  dev_err(kp->dev, "Error writing KEYP_SCAN reg, rc=%d\n", rc);
  return rc;
 }


 udelay((2 * DIV_ROUND_UP(USEC_PER_SEC, KEYP_CLOCK_FREQ)) + 1);

 return rc;
}
