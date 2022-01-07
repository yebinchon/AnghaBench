
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lt_state; } ;
struct analogix_dp_device {TYPE_1__ link_train; } ;


 int FAILED ;
 int analogix_dp_set_enhanced_mode (struct analogix_dp_device*) ;
 int analogix_dp_training_pattern_dis (struct analogix_dp_device*) ;

__attribute__((used)) static void analogix_dp_reduce_link_rate(struct analogix_dp_device *dp)
{
 analogix_dp_training_pattern_dis(dp);
 analogix_dp_set_enhanced_mode(dp);

 dp->link_train.lt_state = FAILED;
}
