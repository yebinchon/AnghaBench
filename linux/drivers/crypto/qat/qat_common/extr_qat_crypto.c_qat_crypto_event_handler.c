
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int dummy; } ;
typedef enum adf_event { ____Placeholder_adf_event } adf_event ;
 int qat_crypto_init (struct adf_accel_dev*) ;
 int qat_crypto_shutdown (struct adf_accel_dev*) ;

__attribute__((used)) static int qat_crypto_event_handler(struct adf_accel_dev *accel_dev,
        enum adf_event event)
{
 int ret;

 switch (event) {
 case 133:
  ret = qat_crypto_init(accel_dev);
  break;
 case 130:
  ret = qat_crypto_shutdown(accel_dev);
  break;
 case 131:
 case 132:
 case 129:
 case 128:
 default:
  ret = 0;
 }
 return ret;
}
