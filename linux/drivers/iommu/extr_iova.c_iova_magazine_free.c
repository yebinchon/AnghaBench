
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_magazine {int dummy; } ;


 int kfree (struct iova_magazine*) ;

__attribute__((used)) static void iova_magazine_free(struct iova_magazine *mag)
{
 kfree(mag);
}
