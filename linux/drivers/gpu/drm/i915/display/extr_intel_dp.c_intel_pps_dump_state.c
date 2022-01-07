
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_power_seq {int t11_t12; int t10; int t9; int t8; int t1_t3; } ;


 int DRM_DEBUG_KMS (char*,char const*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
intel_pps_dump_state(const char *state_name, const struct edp_power_seq *seq)
{
 DRM_DEBUG_KMS("%s t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\n",
        state_name,
        seq->t1_t3, seq->t8, seq->t9, seq->t10, seq->t11_t12);
}
