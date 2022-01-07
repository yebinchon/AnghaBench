
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_data {int vcc; } ;
struct gnss_serial {int dummy; } ;


 struct mtk_data* gnss_serial_get_drvdata (struct gnss_serial*) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int mtk_set_active(struct gnss_serial *gserial)
{
 struct mtk_data *data = gnss_serial_get_drvdata(gserial);
 int ret;

 ret = regulator_enable(data->vcc);
 if (ret)
  return ret;

 return 0;
}
