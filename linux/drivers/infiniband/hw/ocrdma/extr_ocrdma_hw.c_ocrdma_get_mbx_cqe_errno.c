
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 int EPERM ;






__attribute__((used)) static int ocrdma_get_mbx_cqe_errno(u16 cqe_status)
{
 int err_num = -EINVAL;

 switch (cqe_status) {
 case 131:
  err_num = -EPERM;
  break;
 case 129:
  err_num = -EINVAL;
  break;
 case 130:
 case 128:
  err_num = -EINVAL;
  break;
 case 132:
 default:
  err_num = -EINVAL;
  break;
 }
 return err_num;
}
