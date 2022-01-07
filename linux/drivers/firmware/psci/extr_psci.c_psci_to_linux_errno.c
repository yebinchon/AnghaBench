
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;






__attribute__((used)) static int psci_to_linux_errno(int errno)
{
 switch (errno) {
 case 128:
  return 0;
 case 129:
  return -EOPNOTSUPP;
 case 130:
 case 131:
  return -EINVAL;
 case 132:
  return -EPERM;
 };

 return -EINVAL;
}
