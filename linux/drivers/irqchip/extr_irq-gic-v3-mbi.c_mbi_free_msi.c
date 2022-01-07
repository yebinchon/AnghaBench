
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbi_range {scalar_t__ spi_start; int bm; } ;


 int bitmap_release_region (int ,scalar_t__,int ) ;
 int get_count_order (int) ;
 int mbi_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mbi_free_msi(struct mbi_range *mbi, unsigned int hwirq,
    int nr_irqs)
{
 mutex_lock(&mbi_lock);
 bitmap_release_region(mbi->bm, hwirq - mbi->spi_start,
         get_count_order(nr_irqs));
 mutex_unlock(&mbi_lock);
}
