
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int ENXIO ;
 int EOVERFLOW ;
 int ETIMEDOUT ;
 int GEN6_PCODE_ERROR_MASK ;





 int MISSING_CASE (int) ;

__attribute__((used)) static inline int gen7_check_mailbox_status(u32 mbox)
{
 switch (mbox & GEN6_PCODE_ERROR_MASK) {
 case 131:
  return 0;
 case 132:
  return -ENXIO;
 case 128:
  return -ETIMEDOUT;
 case 130:
  return -EINVAL;
 case 129:
  return -EOVERFLOW;
 default:
  MISSING_CASE(mbox & GEN6_PCODE_ERROR_MASK);
  return 0;
 }
}
