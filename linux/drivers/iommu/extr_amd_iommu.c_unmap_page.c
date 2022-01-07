
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int dummy; } ;
struct dma_ops_domain {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 scalar_t__ IS_ERR (struct protection_domain*) ;
 int __unmap_single (struct dma_ops_domain*,int ,size_t,int) ;
 struct protection_domain* get_domain (struct device*) ;
 struct dma_ops_domain* to_dma_ops_domain (struct protection_domain*) ;

__attribute__((used)) static void unmap_page(struct device *dev, dma_addr_t dma_addr, size_t size,
         enum dma_data_direction dir, unsigned long attrs)
{
 struct protection_domain *domain;
 struct dma_ops_domain *dma_dom;

 domain = get_domain(dev);
 if (IS_ERR(domain))
  return;

 dma_dom = to_dma_ops_domain(domain);

 __unmap_single(dma_dom, dma_addr, size, dir);
}
