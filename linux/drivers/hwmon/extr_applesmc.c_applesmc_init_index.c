
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct applesmc_registers {unsigned int temp_begin; unsigned int temp_end; int index_count; int * index; int temp_count; } ;
struct applesmc_entry {int key; int type; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct applesmc_entry const*) ;
 int TEMP_SENSOR_TYPE ;
 struct applesmc_entry* applesmc_get_entry_by_index (unsigned int) ;
 int * kcalloc (int ,int,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int applesmc_init_index(struct applesmc_registers *s)
{
 const struct applesmc_entry *entry;
 unsigned int i;

 if (s->index)
  return 0;

 s->index = kcalloc(s->temp_count, sizeof(s->index[0]), GFP_KERNEL);
 if (!s->index)
  return -ENOMEM;

 for (i = s->temp_begin; i < s->temp_end; i++) {
  entry = applesmc_get_entry_by_index(i);
  if (IS_ERR(entry))
   continue;
  if (strcmp(entry->type, TEMP_SENSOR_TYPE))
   continue;
  s->index[s->index_count++] = entry->key;
 }

 return 0;
}
