
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_status_t ;


 int EFI_SUCCESS ;
 unsigned long __chunk_size ;
 int __nokaslr ;
 int __novamap ;
 int __quiet ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 char* strstr (char const*,char*) ;

efi_status_t efi_parse_options(char const *cmdline)
{
 char *str;

 str = strstr(cmdline, "nokaslr");
 if (str == cmdline || (str && str > cmdline && *(str - 1) == ' '))
  __nokaslr = 1;

 str = strstr(cmdline, "quiet");
 if (str == cmdline || (str && str > cmdline && *(str - 1) == ' '))
  __quiet = 1;





 str = strstr(cmdline, "efi=");
 if (!str)
  return EFI_SUCCESS;


 str += strlen("efi=");





 while (*str && *str != ' ') {
  if (!strncmp(str, "nochunk", 7)) {
   str += strlen("nochunk");
   __chunk_size = -1UL;
  }

  if (!strncmp(str, "novamap", 7)) {
   str += strlen("novamap");
   __novamap = 1;
  }


  while (*str && *str != ' ' && *str != ',')
   str++;

  if (*str == ',')
   str++;
 }

 return EFI_SUCCESS;
}
