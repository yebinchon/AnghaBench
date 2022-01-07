
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;







__attribute__((used)) static inline int qcom_scm_remap_error(int err)
{
 switch (err) {
 case 129:
  return -EIO;
 case 133:
 case 132:
  return -EINVAL;
 case 130:
  return -EOPNOTSUPP;
 case 131:
  return -ENOMEM;
 case 128:
  return -EBUSY;
 }
 return -EINVAL;
}
