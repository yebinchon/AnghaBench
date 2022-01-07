
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubx_data {struct gnss_serial* v_bckp; struct gnss_serial* vcc; } ;
struct serdev_device {int dev; } ;
struct gnss_serial {TYPE_1__* gdev; int * ops; } ;
struct TYPE_2__ {int type; } ;


 int ENODEV ;
 int GNSS_TYPE_UBX ;
 scalar_t__ IS_ERR (struct gnss_serial*) ;
 int PTR_ERR (struct gnss_serial*) ;
 struct gnss_serial* devm_regulator_get (int *,char*) ;
 struct gnss_serial* devm_regulator_get_optional (int *,char*) ;
 struct gnss_serial* gnss_serial_allocate (struct serdev_device*,int) ;
 int gnss_serial_free (struct gnss_serial*) ;
 struct ubx_data* gnss_serial_get_drvdata (struct gnss_serial*) ;
 int gnss_serial_register (struct gnss_serial*) ;
 int regulator_disable (struct gnss_serial*) ;
 int regulator_enable (struct gnss_serial*) ;
 int ubx_gserial_ops ;

__attribute__((used)) static int ubx_probe(struct serdev_device *serdev)
{
 struct gnss_serial *gserial;
 struct ubx_data *data;
 int ret;

 gserial = gnss_serial_allocate(serdev, sizeof(*data));
 if (IS_ERR(gserial)) {
  ret = PTR_ERR(gserial);
  return ret;
 }

 gserial->ops = &ubx_gserial_ops;

 gserial->gdev->type = GNSS_TYPE_UBX;

 data = gnss_serial_get_drvdata(gserial);

 data->vcc = devm_regulator_get(&serdev->dev, "vcc");
 if (IS_ERR(data->vcc)) {
  ret = PTR_ERR(data->vcc);
  goto err_free_gserial;
 }

 data->v_bckp = devm_regulator_get_optional(&serdev->dev, "v-bckp");
 if (IS_ERR(data->v_bckp)) {
  ret = PTR_ERR(data->v_bckp);
  if (ret == -ENODEV)
   data->v_bckp = ((void*)0);
  else
   goto err_free_gserial;
 }

 if (data->v_bckp) {
  ret = regulator_enable(data->v_bckp);
  if (ret)
   goto err_free_gserial;
 }

 ret = gnss_serial_register(gserial);
 if (ret)
  goto err_disable_v_bckp;

 return 0;

err_disable_v_bckp:
 if (data->v_bckp)
  regulator_disable(data->v_bckp);
err_free_gserial:
 gnss_serial_free(gserial);

 return ret;
}
