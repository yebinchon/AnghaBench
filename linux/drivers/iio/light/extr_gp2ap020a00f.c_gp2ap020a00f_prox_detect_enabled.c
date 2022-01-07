
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp2ap020a00f_data {int flags; } ;


 int GP2AP020A00F_FLAG_PROX_FALLING_EV ;
 int GP2AP020A00F_FLAG_PROX_RISING_EV ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool gp2ap020a00f_prox_detect_enabled(struct gp2ap020a00f_data *data)
{
 return test_bit(GP2AP020A00F_FLAG_PROX_RISING_EV, &data->flags) ||
        test_bit(GP2AP020A00F_FLAG_PROX_FALLING_EV, &data->flags);
}
