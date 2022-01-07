
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error_code; } ;
struct safexcel_result_desc {TYPE_1__ result_data; scalar_t__ buffer_overflow; scalar_t__ descriptor_overflow; } ;
struct safexcel_crypto_priv {int dev; } ;


 int BIT (int) ;
 int EBADMSG ;
 int EINVAL ;
 int EIO ;
 int dev_err (int ,char*,...) ;
 scalar_t__ likely (int) ;

inline int safexcel_rdesc_check_errors(struct safexcel_crypto_priv *priv,
           struct safexcel_result_desc *rdesc)
{
 if (likely((!rdesc->descriptor_overflow) &&
     (!rdesc->buffer_overflow) &&
     (!rdesc->result_data.error_code)))
  return 0;

 if (rdesc->descriptor_overflow)
  dev_err(priv->dev, "Descriptor overflow detected");

 if (rdesc->buffer_overflow)
  dev_err(priv->dev, "Buffer overflow detected");

 if (rdesc->result_data.error_code & 0x4066) {

  dev_err(priv->dev,
   "result descriptor error (%x)",
   rdesc->result_data.error_code);
  return -EIO;
 } else if (rdesc->result_data.error_code &
     (BIT(7) | BIT(4) | BIT(3) | BIT(0))) {





  return -EINVAL;
 } else if (rdesc->result_data.error_code & BIT(9)) {

  return -EBADMSG;
 }


 return -EINVAL;
}
