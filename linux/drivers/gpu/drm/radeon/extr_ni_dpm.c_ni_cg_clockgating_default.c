
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CAYMAN_CGCG_CGLS_DEFAULT_LENGTH ;
 int btc_program_mgcg_hw_sequence (struct radeon_device*,int const*,int ) ;
 int cayman_cgcg_cgls_default ;

__attribute__((used)) static void ni_cg_clockgating_default(struct radeon_device *rdev)
{
 u32 count;
 const u32 *ps = ((void*)0);

 ps = (const u32 *)&cayman_cgcg_cgls_default;
 count = CAYMAN_CGCG_CGLS_DEFAULT_LENGTH;

 btc_program_mgcg_hw_sequence(rdev, ps, count);
}
