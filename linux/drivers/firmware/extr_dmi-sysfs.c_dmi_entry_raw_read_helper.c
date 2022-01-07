
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_sysfs_entry {int dummy; } ;
struct dmi_read_state {int pos; int count; int buf; } ;
struct dmi_header {int dummy; } ;
typedef int ssize_t ;


 size_t dmi_entry_length (struct dmi_header const*) ;
 int memory_read_from_buffer (int ,int ,int *,struct dmi_header const*,size_t) ;

__attribute__((used)) static ssize_t dmi_entry_raw_read_helper(struct dmi_sysfs_entry *entry,
      const struct dmi_header *dh,
      void *_state)
{
 struct dmi_read_state *state = _state;
 size_t entry_length;

 entry_length = dmi_entry_length(dh);

 return memory_read_from_buffer(state->buf, state->count,
           &state->pos, dh, entry_length);
}
