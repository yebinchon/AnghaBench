
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_magazine {int dummy; } ;
typedef int gfp_t ;


 struct iova_magazine* kzalloc (int,int ) ;

__attribute__((used)) static struct iova_magazine *iova_magazine_alloc(gfp_t flags)
{
 return kzalloc(sizeof(struct iova_magazine), flags);
}
