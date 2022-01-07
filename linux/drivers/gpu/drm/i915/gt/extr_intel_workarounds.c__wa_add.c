
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {unsigned int count; struct i915_wa* list; int wa_count; } ;
struct i915_wa {int mask; int val; int reg; int read; } ;


 int ALIGN (int,unsigned int const) ;
 int DRM_ERROR (char*,...) ;
 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ALIGNED (unsigned int,unsigned int const) ;
 unsigned int WA_LIST_CHUNK ;
 scalar_t__ i915_mmio_reg_offset (int ) ;
 int is_power_of_2 (unsigned int const) ;
 struct i915_wa* kmalloc_array (int ,int,int ) ;
 int memcpy (struct i915_wa*,struct i915_wa*,int) ;
 int swap (struct i915_wa,struct i915_wa) ;

__attribute__((used)) static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
{
 unsigned int addr = i915_mmio_reg_offset(wa->reg);
 unsigned int start = 0, end = wal->count;
 const unsigned int grow = WA_LIST_CHUNK;
 struct i915_wa *wa_;

 GEM_BUG_ON(!is_power_of_2(grow));

 if (IS_ALIGNED(wal->count, grow)) {
  struct i915_wa *list;

  list = kmalloc_array(ALIGN(wal->count + 1, grow), sizeof(*wa),
         GFP_KERNEL);
  if (!list) {
   DRM_ERROR("No space for workaround init!\n");
   return;
  }

  if (wal->list)
   memcpy(list, wal->list, sizeof(*wa) * wal->count);

  wal->list = list;
 }

 while (start < end) {
  unsigned int mid = start + (end - start) / 2;

  if (i915_mmio_reg_offset(wal->list[mid].reg) < addr) {
   start = mid + 1;
  } else if (i915_mmio_reg_offset(wal->list[mid].reg) > addr) {
   end = mid;
  } else {
   wa_ = &wal->list[mid];

   if ((wa->mask & ~wa_->mask) == 0) {
    DRM_ERROR("Discarding overwritten w/a for reg %04x (mask: %08x, value: %08x)\n",
       i915_mmio_reg_offset(wa_->reg),
       wa_->mask, wa_->val);

    wa_->val &= ~wa->mask;
   }

   wal->wa_count++;
   wa_->val |= wa->val;
   wa_->mask |= wa->mask;
   wa_->read |= wa->read;
   return;
  }
 }

 wal->wa_count++;
 wa_ = &wal->list[wal->count++];
 *wa_ = *wa;

 while (wa_-- > wal->list) {
  GEM_BUG_ON(i915_mmio_reg_offset(wa_[0].reg) ==
      i915_mmio_reg_offset(wa_[1].reg));
  if (i915_mmio_reg_offset(wa_[1].reg) >
      i915_mmio_reg_offset(wa_[0].reg))
   break;

  swap(wa_[1], wa_[0]);
 }
}
