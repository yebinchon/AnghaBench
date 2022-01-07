
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct lg216x_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ atscmh_rs_err; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; struct lg216x_state* demodulator_priv; } ;


 int lg216x_read_rs_err_count (struct lg216x_state*,scalar_t__*) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg216x_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 *ucblocks = 0;

 return 0;
}
