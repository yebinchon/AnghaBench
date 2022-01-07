
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int phy_reg_mutex; } ;
struct fw_card {int dummy; } ;


 struct fw_ohci* fw_ohci (struct fw_card*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int update_phy_reg (struct fw_ohci*,int,int,int) ;

__attribute__((used)) static int ohci_update_phy_reg(struct fw_card *card, int addr,
          int clear_bits, int set_bits)
{
 struct fw_ohci *ohci = fw_ohci(card);
 int ret;

 mutex_lock(&ohci->phy_reg_mutex);
 ret = update_phy_reg(ohci, addr, clear_bits, set_bits);
 mutex_unlock(&ohci->phy_reg_mutex);

 return ret;
}
