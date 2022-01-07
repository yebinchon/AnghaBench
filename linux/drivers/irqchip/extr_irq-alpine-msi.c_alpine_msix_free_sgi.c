
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alpine_msix_data {unsigned int spi_first; int msi_map_lock; int msi_map; } ;


 int bitmap_clear (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void alpine_msix_free_sgi(struct alpine_msix_data *priv, unsigned sgi,
     int num_req)
{
 int first = sgi - priv->spi_first;

 spin_lock(&priv->msi_map_lock);

 bitmap_clear(priv->msi_map, first, num_req);

 spin_unlock(&priv->msi_map_lock);
}
