
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (int ) ;
 int memset (int *,int ,int ) ;
 int zip_dbg (char*) ;

u8 *zip_data_buf_alloc(u64 size)
{
 u8 *ptr;

 ptr = (u8 *)__get_free_pages((GFP_KERNEL | GFP_DMA),
     get_order(size));

 if (!ptr)
  return ((void*)0);

 memset(ptr, 0, size);

 zip_dbg("Data buffer allocation success\n");
 return ptr;
}
