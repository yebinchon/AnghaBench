
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int free_pages (int ,int ) ;
 int get_order (int ) ;
 int zip_dbg (char*,int *) ;

void zip_data_buf_free(u8 *ptr, u64 size)
{
 zip_dbg("Freeing data buffer 0x%lx\n", ptr);

 free_pages((u64)ptr, get_order(size));
}
