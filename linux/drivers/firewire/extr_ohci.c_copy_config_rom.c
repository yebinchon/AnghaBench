
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 size_t CONFIG_ROM_SIZE ;
 int memcpy (int *,int const*,size_t) ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static void copy_config_rom(__be32 *dest, const __be32 *src, size_t length)
{
 size_t size = length * 4;

 memcpy(dest, src, size);
 if (size < CONFIG_ROM_SIZE)
  memset(&dest[length], 0, CONFIG_ROM_SIZE - size);
}
