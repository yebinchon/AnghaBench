
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_sei {int cp_msi_lock; int cp_msi_bitmap; } ;


 int clear_bit (unsigned long,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mvebu_sei_cp_release_irq(struct mvebu_sei *sei, unsigned long hwirq)
{
 mutex_lock(&sei->cp_msi_lock);
 clear_bit(hwirq, sei->cp_msi_bitmap);
 mutex_unlock(&sei->cp_msi_lock);
}
