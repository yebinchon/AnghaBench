
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* esre1; } ;
struct esre_entry {TYPE_2__ esre; } ;
typedef int ssize_t ;
struct TYPE_3__ {int fw_class; } ;


 int efi_guid_to_str (int *,char*) ;
 int sprintf (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t fw_class_show(struct esre_entry *entry, char *buf)
{
 char *str = buf;

 efi_guid_to_str(&entry->esre.esre1->fw_class, str);
 str += strlen(str);
 str += sprintf(str, "\n");

 return str - buf;
}
