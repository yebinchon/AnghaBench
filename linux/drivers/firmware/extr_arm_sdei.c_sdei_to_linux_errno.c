
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPERM ;






__attribute__((used)) static int sdei_to_linux_errno(unsigned long sdei_err)
{
 switch (sdei_err) {
 case 130:
  return -EOPNOTSUPP;
 case 131:
  return -EINVAL;
 case 132:
  return -EPERM;
 case 128:
  return -EINPROGRESS;
 case 129:
  return -ENOMEM;
 }


 return sdei_err;
}
