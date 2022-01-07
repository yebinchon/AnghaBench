
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_dma_cookie {int type; int msi_page_list; int msi_lock; } ;
typedef enum iommu_dma_cookie_type { ____Placeholder_iommu_dma_cookie_type } iommu_dma_cookie_type ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct iommu_dma_cookie* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iommu_dma_cookie *cookie_alloc(enum iommu_dma_cookie_type type)
{
 struct iommu_dma_cookie *cookie;

 cookie = kzalloc(sizeof(*cookie), GFP_KERNEL);
 if (cookie) {
  spin_lock_init(&cookie->msi_lock);
  INIT_LIST_HEAD(&cookie->msi_page_list);
  cookie->type = type;
 }
 return cookie;
}
