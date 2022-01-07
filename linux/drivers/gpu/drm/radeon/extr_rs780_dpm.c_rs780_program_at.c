
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct igp_power_info {int refresh_rate; } ;


 int FVTHROT_CB1 ;
 int FVTHROT_CB2 ;
 int FVTHROT_CB3 ;
 int FVTHROT_CB4 ;
 int FVTHROT_TARGET_REG ;
 int WREG32 (int ,int) ;
 struct igp_power_info* rs780_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rs780_program_at(struct radeon_device *rdev)
{
 struct igp_power_info *pi = rs780_get_pi(rdev);

 WREG32(FVTHROT_TARGET_REG, 30000000 / pi->refresh_rate);
 WREG32(FVTHROT_CB1, 1000000 * 5 / pi->refresh_rate);
 WREG32(FVTHROT_CB2, 1000000 * 10 / pi->refresh_rate);
 WREG32(FVTHROT_CB3, 1000000 * 30 / pi->refresh_rate);
 WREG32(FVTHROT_CB4, 1000000 * 50 / pi->refresh_rate);
}
