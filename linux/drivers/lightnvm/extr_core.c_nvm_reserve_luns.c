
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_dev {int lun_map; } ;


 int EBUSY ;
 int clear_bit (int,int ) ;
 int pr_err (char*,int) ;
 scalar_t__ test_and_set_bit (int,int ) ;

__attribute__((used)) static int nvm_reserve_luns(struct nvm_dev *dev, int lun_begin, int lun_end)
{
 int i;

 for (i = lun_begin; i <= lun_end; i++) {
  if (test_and_set_bit(i, dev->lun_map)) {
   pr_err("lun %d already allocated\n", i);
   goto err;
  }
 }

 return 0;
err:
 while (--i >= lun_begin)
  clear_bit(i, dev->lun_map);

 return -EBUSY;
}
