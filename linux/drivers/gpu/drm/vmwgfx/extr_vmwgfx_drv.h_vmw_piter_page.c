
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_piter {struct page* (* page ) (struct vmw_piter*) ;} ;
struct page {int dummy; } ;


 struct page* stub1 (struct vmw_piter*) ;

__attribute__((used)) static inline struct page *vmw_piter_page(struct vmw_piter *viter)
{
 return viter->page(viter);
}
