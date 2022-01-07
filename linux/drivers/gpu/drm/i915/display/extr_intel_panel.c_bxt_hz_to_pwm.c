
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_connector {int dummy; } ;


 int DIV_ROUND_CLOSEST (int ,int ) ;
 int KHz (int) ;

__attribute__((used)) static u32 bxt_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
{
 return DIV_ROUND_CLOSEST(KHz(19200), pwm_freq_hz);
}
