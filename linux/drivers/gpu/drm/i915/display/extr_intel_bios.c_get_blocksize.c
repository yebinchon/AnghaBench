
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _get_blocksize (void const*) ;

__attribute__((used)) static u32 get_blocksize(const void *block_data)
{
 return _get_blocksize(block_data - 3);
}
