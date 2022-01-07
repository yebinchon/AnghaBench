
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int dummy; } ;


 int DP_TEST_NAK ;

__attribute__((used)) static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
{
 u8 test_result = DP_TEST_NAK;
 return test_result;
}
