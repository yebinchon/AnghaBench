
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubx_data {scalar_t__ v_bckp; } ;
struct serdev_device {int dummy; } ;
struct gnss_serial {int dummy; } ;


 int gnss_serial_deregister (struct gnss_serial*) ;
 int gnss_serial_free (struct gnss_serial*) ;
 struct ubx_data* gnss_serial_get_drvdata (struct gnss_serial*) ;
 int regulator_disable (scalar_t__) ;
 struct gnss_serial* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static void ubx_remove(struct serdev_device *serdev)
{
 struct gnss_serial *gserial = serdev_device_get_drvdata(serdev);
 struct ubx_data *data = gnss_serial_get_drvdata(gserial);

 gnss_serial_deregister(gserial);
 if (data->v_bckp)
  regulator_disable(data->v_bckp);
 gnss_serial_free(gserial);
}
