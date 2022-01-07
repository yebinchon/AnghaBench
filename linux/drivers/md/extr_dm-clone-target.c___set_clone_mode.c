
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clone {TYPE_1__* ti; int mode; int cmd; } ;
typedef enum clone_metadata_mode { ____Placeholder_clone_metadata_mode } clone_metadata_mode ;
struct TYPE_2__ {int table; } ;





 int DMINFO (char*,int ,char const*) ;
 int WRITE_ONCE (int ,int) ;
 int clone_device_name (struct clone*) ;
 int dm_clone_metadata_set_read_only (int ) ;
 int dm_clone_metadata_set_read_write (int ) ;
 int dm_table_event (int ) ;
 int get_clone_mode (struct clone*) ;

__attribute__((used)) static void __set_clone_mode(struct clone *clone, enum clone_metadata_mode new_mode)
{
 const char *descs[] = {
  "read-write",
  "read-only",
  "fail"
 };

 enum clone_metadata_mode old_mode = get_clone_mode(clone);


 if (old_mode == 130)
  new_mode = 130;

 switch (new_mode) {
 case 130:
 case 129:
  dm_clone_metadata_set_read_only(clone->cmd);
  break;

 case 128:
  dm_clone_metadata_set_read_write(clone->cmd);
  break;
 }

 WRITE_ONCE(clone->mode, new_mode);

 if (new_mode != old_mode) {
  dm_table_event(clone->ti->table);
  DMINFO("%s: Switching to %s mode", clone_device_name(clone),
         descs[(int)new_mode]);
 }
}
