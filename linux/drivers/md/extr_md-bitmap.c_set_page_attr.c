
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filemap_attr; } ;
struct bitmap {TYPE_1__ storage; } ;
typedef enum bitmap_page_attr { ____Placeholder_bitmap_page_attr } bitmap_page_attr ;


 int set_bit (int,int ) ;

__attribute__((used)) static inline void set_page_attr(struct bitmap *bitmap, int pnum,
     enum bitmap_page_attr attr)
{
 set_bit((pnum<<2) + attr, bitmap->storage.filemap_attr);
}
