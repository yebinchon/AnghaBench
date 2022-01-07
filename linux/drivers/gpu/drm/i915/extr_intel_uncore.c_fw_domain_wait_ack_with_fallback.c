
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore_forcewake_domain {int id; } ;
typedef enum ack_type { ____Placeholder_ack_type } ack_type ;


 int const ACK_SET ;
 int DRM_DEBUG_DRIVER (char*,int ,char*,int const,unsigned int) ;
 int ETIMEDOUT ;
 int FORCEWAKE_KERNEL ;
 int FORCEWAKE_KERNEL_FALLBACK ;
 int const fw_ack (struct intel_uncore_forcewake_domain const*) ;
 int fw_clear (struct intel_uncore_forcewake_domain const*,int ) ;
 int fw_set (struct intel_uncore_forcewake_domain const*,int ) ;
 int intel_uncore_forcewake_domain_to_str (int ) ;
 int udelay (int) ;
 int wait_ack_clear (struct intel_uncore_forcewake_domain const*,int ) ;
 int wait_ack_set (struct intel_uncore_forcewake_domain const*,int ) ;

__attribute__((used)) static int
fw_domain_wait_ack_with_fallback(const struct intel_uncore_forcewake_domain *d,
     const enum ack_type type)
{
 const u32 ack_bit = FORCEWAKE_KERNEL;
 const u32 value = type == ACK_SET ? ack_bit : 0;
 unsigned int pass;
 bool ack_detected;
 pass = 1;
 do {
  wait_ack_clear(d, FORCEWAKE_KERNEL_FALLBACK);

  fw_set(d, FORCEWAKE_KERNEL_FALLBACK);

  udelay(10 * pass);
  wait_ack_set(d, FORCEWAKE_KERNEL_FALLBACK);

  ack_detected = (fw_ack(d) & ack_bit) == value;

  fw_clear(d, FORCEWAKE_KERNEL_FALLBACK);
 } while (!ack_detected && pass++ < 10);

 DRM_DEBUG_DRIVER("%s had to use fallback to %s ack, 0x%x (passes %u)\n",
    intel_uncore_forcewake_domain_to_str(d->id),
    type == ACK_SET ? "set" : "clear",
    fw_ack(d),
    pass);

 return ack_detected ? 0 : -ETIMEDOUT;
}
