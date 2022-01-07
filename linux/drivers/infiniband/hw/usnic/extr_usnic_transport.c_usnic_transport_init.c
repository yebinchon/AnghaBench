
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ROCE_BITMAP_SZ ;
 int bitmap_set (int ,int ,int) ;
 int kzalloc (int ,int ) ;
 int roce_bitmap ;

int usnic_transport_init(void)
{
 roce_bitmap = kzalloc(ROCE_BITMAP_SZ, GFP_KERNEL);
 if (!roce_bitmap)
  return -ENOMEM;


 bitmap_set(roce_bitmap, 0, 1);
 return 0;
}
