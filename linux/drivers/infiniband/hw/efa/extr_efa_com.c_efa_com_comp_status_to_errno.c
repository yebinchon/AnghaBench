
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;

__attribute__((used)) static int efa_com_comp_status_to_errno(u8 comp_status)
{
 switch (comp_status) {
 case 130:
  return 0;
 case 131:
  return -ENOMEM;
 case 128:
  return -EOPNOTSUPP;
 case 134:
 case 132:
 case 133:
 case 129:
  return -EINVAL;
 default:
  return -EINVAL;
 }
}
