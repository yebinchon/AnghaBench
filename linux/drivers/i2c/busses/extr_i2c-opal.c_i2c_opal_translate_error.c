
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int ETIMEDOUT ;







__attribute__((used)) static int i2c_opal_translate_error(int rc)
{
 switch (rc) {
 case 129:
  return -ENOMEM;
 case 128:
  return -EINVAL;
 case 133:
  return -EAGAIN;
 case 130:
  return -ETIMEDOUT;
 case 132:
  return -ENXIO;
 case 131:
  return -EBUSY;
 default:
  return -EIO;
 }
}
