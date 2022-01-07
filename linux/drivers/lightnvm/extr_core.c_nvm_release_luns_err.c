
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_dev {int lun_map; } ;


 int WARN_ON (int) ;
 int test_and_clear_bit (int,int ) ;

__attribute__((used)) static void nvm_release_luns_err(struct nvm_dev *dev, int lun_begin,
     int lun_end)
{
 int i;

 for (i = lun_begin; i <= lun_end; i++)
  WARN_ON(!test_and_clear_bit(i, dev->lun_map));
}
