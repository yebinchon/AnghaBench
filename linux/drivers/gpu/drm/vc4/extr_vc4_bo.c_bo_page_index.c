
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t PAGE_SIZE ;

__attribute__((used)) static uint32_t bo_page_index(size_t size)
{
 return (size / PAGE_SIZE) - 1;
}
