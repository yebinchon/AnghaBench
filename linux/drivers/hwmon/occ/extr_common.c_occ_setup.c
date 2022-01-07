
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occ {int bus_dev; int hwmon; int ** groups; int group; int lock; } ;


 int ESHUTDOWN ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int devm_hwmon_device_register_with_groups (int ,char const*,struct occ*,int **) ;
 int mutex_init (int *) ;
 int occ_parse_poll_response (struct occ*) ;
 int occ_poll (struct occ*) ;
 int occ_setup_sensor_attrs (struct occ*) ;
 int occ_setup_sysfs (struct occ*) ;

int occ_setup(struct occ *occ, const char *name)
{
 int rc;

 mutex_init(&occ->lock);
 occ->groups[0] = &occ->group;


 rc = occ_poll(occ);
 if (rc == -ESHUTDOWN) {
  dev_info(occ->bus_dev, "host is not ready\n");
  return rc;
 } else if (rc < 0) {
  dev_err(occ->bus_dev, "failed to get OCC poll response: %d\n",
   rc);
  return rc;
 }

 occ_parse_poll_response(occ);

 rc = occ_setup_sensor_attrs(occ);
 if (rc) {
  dev_err(occ->bus_dev, "failed to setup sensor attrs: %d\n",
   rc);
  return rc;
 }

 occ->hwmon = devm_hwmon_device_register_with_groups(occ->bus_dev, name,
           occ, occ->groups);
 if (IS_ERR(occ->hwmon)) {
  rc = PTR_ERR(occ->hwmon);
  dev_err(occ->bus_dev, "failed to register hwmon device: %d\n",
   rc);
  return rc;
 }

 rc = occ_setup_sysfs(occ);
 if (rc)
  dev_err(occ->bus_dev, "failed to setup sysfs: %d\n", rc);

 return rc;
}
