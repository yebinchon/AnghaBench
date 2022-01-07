
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int WREG32 (int const,int const) ;

__attribute__((used)) static void trinity_program_override_mgpg_sequences(struct radeon_device *rdev,
          const u32 *seq, u32 count)
{
 u32 i, length = count * 2;

 for (i = 0; i < length; i += 2)
  WREG32(seq[i], seq[i+1]);

}
