
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_cipher {int value; scalar_t__ name; } ;
typedef enum flexi_cipher { ____Placeholder_flexi_cipher } flexi_cipher ;


 struct nitrox_cipher* flexi_cipher_table ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static enum flexi_cipher flexi_cipher_type(const char *name)
{
 const struct nitrox_cipher *cipher = flexi_cipher_table;

 while (cipher->name) {
  if (!strcmp(cipher->name, name))
   break;
  cipher++;
 }
 return cipher->value;
}
