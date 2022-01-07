
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_eq {int dummy; } ;
struct ocrdma_dev {int dummy; } ;


 int min (int,int) ;
 int ocrdma_mbx_modify_eqd (struct ocrdma_dev*,struct ocrdma_eq*,int) ;

__attribute__((used)) static int ocrdma_modify_eqd(struct ocrdma_dev *dev, struct ocrdma_eq *eq,
        int num)
{
 int num_eqs, i = 0;
 if (num > 8) {
  while (num) {
   num_eqs = min(num, 8);
   ocrdma_mbx_modify_eqd(dev, &eq[i], num_eqs);
   i += num_eqs;
   num -= num_eqs;
  }
 } else {
  ocrdma_mbx_modify_eqd(dev, eq, num);
 }
 return 0;
}
