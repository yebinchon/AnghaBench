
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct intel_engine_execlists {scalar_t__ submit_reg; scalar_t__ ctrl_reg; } ;


 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void write_desc(struct intel_engine_execlists *execlists, u64 desc, u32 port)
{
 if (execlists->ctrl_reg) {
  writel(lower_32_bits(desc), execlists->submit_reg + port * 2);
  writel(upper_32_bits(desc), execlists->submit_reg + port * 2 + 1);
 } else {
  writel(upper_32_bits(desc), execlists->submit_reg);
  writel(lower_32_bits(desc), execlists->submit_reg);
 }
}
