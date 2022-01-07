
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DOMAIN_ID ;
 int __clear_bit (int,int ) ;
 int amd_iommu_pd_alloc_bitmap ;
 int pd_bitmap_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void domain_id_free(int id)
{
 spin_lock(&pd_bitmap_lock);
 if (id > 0 && id < MAX_DOMAIN_ID)
  __clear_bit(id, amd_iommu_pd_alloc_bitmap);
 spin_unlock(&pd_bitmap_lock);
}
