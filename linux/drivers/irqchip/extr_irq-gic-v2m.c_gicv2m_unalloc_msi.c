
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v2m_data {scalar_t__ spi_start; int bm; } ;


 int bitmap_release_region (int ,scalar_t__,int ) ;
 int get_count_order (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v2m_lock ;

__attribute__((used)) static void gicv2m_unalloc_msi(struct v2m_data *v2m, unsigned int hwirq,
          int nr_irqs)
{
 spin_lock(&v2m_lock);
 bitmap_release_region(v2m->bm, hwirq - v2m->spi_start,
         get_count_order(nr_irqs));
 spin_unlock(&v2m_lock);
}
