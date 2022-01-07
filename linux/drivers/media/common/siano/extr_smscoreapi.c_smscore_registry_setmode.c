
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_registry_entry_t {int mode; } ;


 int pr_err (char*) ;
 struct smscore_registry_entry_t* smscore_find_registry (char*) ;

__attribute__((used)) static void smscore_registry_setmode(char *devpath, int mode)
{
 struct smscore_registry_entry_t *entry;

 entry = smscore_find_registry(devpath);
 if (entry)
  entry->mode = mode;
 else
  pr_err("No registry found.\n");
}
