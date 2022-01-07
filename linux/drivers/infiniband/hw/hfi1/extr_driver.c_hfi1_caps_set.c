
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 scalar_t__ HFI1_CAP_LOCKED () ;
 unsigned long HFI1_CAP_LOCKED_SMASK ;
 unsigned long HFI1_CAP_MUST_HAVE_KERN ;
 unsigned long HFI1_CAP_RESERVED_MASK ;
 unsigned long HFI1_CAP_USER_SHIFT ;
 unsigned long HFI1_CAP_WRITABLE_MASK ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int pr_warn (char*,...) ;

__attribute__((used)) static int hfi1_caps_set(const char *val, const struct kernel_param *kp)
{
 int ret = 0;
 unsigned long *cap_mask_ptr = (unsigned long *)kp->arg,
  cap_mask = *cap_mask_ptr, value, diff,
  write_mask = ((HFI1_CAP_WRITABLE_MASK << HFI1_CAP_USER_SHIFT) |
         HFI1_CAP_WRITABLE_MASK);

 ret = kstrtoul(val, 0, &value);
 if (ret) {
  pr_warn("Invalid module parameter value for 'cap_mask'\n");
  goto done;
 }

 diff = value ^ (cap_mask & ~HFI1_CAP_LOCKED_SMASK);


 if (HFI1_CAP_LOCKED() && (diff & ~write_mask)) {
  pr_warn("Ignoring non-writable capability bits %#lx\n",
   diff & ~write_mask);
  diff &= write_mask;
 }


 diff &= ~HFI1_CAP_RESERVED_MASK;

 cap_mask &= ~diff;

 cap_mask |= (value & diff);

 diff = (cap_mask & (HFI1_CAP_MUST_HAVE_KERN << HFI1_CAP_USER_SHIFT)) ^
  ((cap_mask & HFI1_CAP_MUST_HAVE_KERN) << HFI1_CAP_USER_SHIFT);
 cap_mask &= ~diff;

 *cap_mask_ptr = cap_mask;
done:
 return ret;
}
