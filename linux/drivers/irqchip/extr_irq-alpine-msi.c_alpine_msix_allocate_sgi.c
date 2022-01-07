
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alpine_msix_data {int num_spis; int spi_first; int msi_map_lock; int msi_map; } ;


 int ENOSPC ;
 int bitmap_find_next_zero_area (int ,int,int ,int,int ) ;
 int bitmap_set (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int alpine_msix_allocate_sgi(struct alpine_msix_data *priv, int num_req)
{
 int first;

 spin_lock(&priv->msi_map_lock);

 first = bitmap_find_next_zero_area(priv->msi_map, priv->num_spis, 0,
        num_req, 0);
 if (first >= priv->num_spis) {
  spin_unlock(&priv->msi_map_lock);
  return -ENOSPC;
 }

 bitmap_set(priv->msi_map, first, num_req);

 spin_unlock(&priv->msi_map_lock);

 return priv->spi_first + first;
}
