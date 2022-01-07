
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int train_set; } ;


 int intel_dp_set_link_train (struct intel_dp*,int ) ;
 int intel_dp_set_signal_levels (struct intel_dp*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static bool
intel_dp_reset_link_train(struct intel_dp *intel_dp,
   u8 dp_train_pat)
{
 memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
 intel_dp_set_signal_levels(intel_dp);
 return intel_dp_set_link_train(intel_dp, dp_train_pat);
}
