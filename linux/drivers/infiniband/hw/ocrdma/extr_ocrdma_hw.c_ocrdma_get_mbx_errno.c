
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EAGAIN ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int ENOBUFS ;

 int OCRDMA_MBX_RSP_ASTATUS_MASK ;
 int OCRDMA_MBX_RSP_ASTATUS_SHIFT ;
 int OCRDMA_MBX_RSP_STATUS_MASK ;
 int OCRDMA_MBX_RSP_STATUS_SHIFT ;
__attribute__((used)) static int ocrdma_get_mbx_errno(u32 status)
{
 int err_num;
 u8 mbox_status = (status & OCRDMA_MBX_RSP_STATUS_MASK) >>
     OCRDMA_MBX_RSP_STATUS_SHIFT;
 u8 add_status = (status & OCRDMA_MBX_RSP_ASTATUS_MASK) >>
     OCRDMA_MBX_RSP_ASTATUS_SHIFT;

 switch (mbox_status) {
 case 142:
 case 146:
  err_num = -EAGAIN;
  break;

 case 152:
 case 158:
 case 149:
 case 151:
 case 159:
 case 145:
 case 150:
 case 138:
 case 139:
 case 161:
 case 153:
 case 155:
 case 148:
 case 156:
 case 157:
 case 160:
 case 154:
 case 163:
 case 130:
 case 128:
  err_num = -EINVAL;
  break;

 case 140:
 case 137:
 case 143:
 case 144:
  err_num = -EBUSY;
  break;

 case 136:
 case 133:
 case 135:
 case 129:
 case 141:
 case 147:
 case 134:
 case 132:
 case 131:
  err_num = -ENOBUFS;
  break;

 case 162:
  switch (add_status) {
  case 164:
   err_num = -EAGAIN;
   break;
  default:
   err_num = -EFAULT;
  }
  break;
 default:
  err_num = -EFAULT;
 }
 return err_num;
}
