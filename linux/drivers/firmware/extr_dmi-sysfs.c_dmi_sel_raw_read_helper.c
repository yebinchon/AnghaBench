
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_event_log {int access_method; } ;
struct dmi_sysfs_entry {int dummy; } ;
struct dmi_read_state {int count; int pos; int buf; } ;
struct dmi_header {int dummy; } ;
typedef int ssize_t ;
typedef int sel ;







 int EIO ;
 int dmi_entry_length (struct dmi_header const*) ;
 int dmi_sel_raw_read_io (struct dmi_sysfs_entry*,struct dmi_system_event_log*,int ,int ,int ) ;
 int dmi_sel_raw_read_phys32 (struct dmi_sysfs_entry*,struct dmi_system_event_log*,int ,int ,int ) ;
 int memcpy (struct dmi_system_event_log*,struct dmi_header const*,int) ;
 int pr_info (char*,...) ;

__attribute__((used)) static ssize_t dmi_sel_raw_read_helper(struct dmi_sysfs_entry *entry,
           const struct dmi_header *dh,
           void *_state)
{
 struct dmi_read_state *state = _state;
 struct dmi_system_event_log sel;

 if (sizeof(sel) > dmi_entry_length(dh))
  return -EIO;

 memcpy(&sel, dh, sizeof(sel));

 switch (sel.access_method) {
 case 129:
 case 130:
 case 131:
  return dmi_sel_raw_read_io(entry, &sel, state->buf,
        state->pos, state->count);
 case 128:
  return dmi_sel_raw_read_phys32(entry, &sel, state->buf,
            state->pos, state->count);
 case 132:
  pr_info("dmi-sysfs: GPNV support missing.\n");
  return -EIO;
 default:
  pr_info("dmi-sysfs: Unknown access method %02x\n",
   sel.access_method);
  return -EIO;
 }
}
