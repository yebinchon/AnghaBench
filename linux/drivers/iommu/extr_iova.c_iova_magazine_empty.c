
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_magazine {scalar_t__ size; } ;



__attribute__((used)) static bool iova_magazine_empty(struct iova_magazine *mag)
{
 return (!mag || mag->size == 0);
}
