
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int count; } ;
struct i2c_payloads {TYPE_1__ payloads; } ;



__attribute__((used)) static uint32_t dal_ddc_i2c_payloads_get_count(struct i2c_payloads *p)
{
 return p->payloads.count;
}
