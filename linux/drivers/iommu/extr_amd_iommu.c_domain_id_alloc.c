
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int BUG_ON (int) ;
 int MAX_DOMAIN_ID ;
 int __set_bit (int,int ) ;
 int amd_iommu_pd_alloc_bitmap ;
 int find_first_zero_bit (int ,int) ;
 int pd_bitmap_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u16 domain_id_alloc(void)
{
 int id;

 spin_lock(&pd_bitmap_lock);
 id = find_first_zero_bit(amd_iommu_pd_alloc_bitmap, MAX_DOMAIN_ID);
 BUG_ON(id == 0);
 if (id > 0 && id < MAX_DOMAIN_ID)
  __set_bit(id, amd_iommu_pd_alloc_bitmap);
 else
  id = 0;
 spin_unlock(&pd_bitmap_lock);

 return id;
}
