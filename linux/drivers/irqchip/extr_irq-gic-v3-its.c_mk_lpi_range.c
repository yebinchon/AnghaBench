
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct lpi_range {void* span; void* base_id; } ;


 int GFP_KERNEL ;
 struct lpi_range* kmalloc (int,int ) ;

__attribute__((used)) static struct lpi_range *mk_lpi_range(u32 base, u32 span)
{
 struct lpi_range *range;

 range = kmalloc(sizeof(*range), GFP_KERNEL);
 if (range) {
  range->base_id = base;
  range->span = span;
 }

 return range;
}
