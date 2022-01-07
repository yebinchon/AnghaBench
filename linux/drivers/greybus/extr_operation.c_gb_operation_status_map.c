
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EAGAIN ;
 int EILSEQ ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int EMSGSIZE ;
 int ENODEV ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ETIMEDOUT ;
__attribute__((used)) static int gb_operation_status_map(u8 status)
{
 switch (status) {
 case 130:
  return 0;
 case 138:
  return -EINTR;
 case 129:
  return -ETIMEDOUT;
 case 134:
  return -ENOMEM;
 case 132:
  return -EPROTONOSUPPORT;
 case 133:
  return -EMSGSIZE;
 case 137:
  return -EINVAL;
 case 131:
  return -EAGAIN;
 case 135:
  return -ENODEV;
 case 136:
  return -EILSEQ;
 case 128:
 default:
  return -EIO;
 }
}
