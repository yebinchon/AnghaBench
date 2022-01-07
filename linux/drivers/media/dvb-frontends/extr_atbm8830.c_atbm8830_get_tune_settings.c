
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_tune_settings {scalar_t__ max_drift; scalar_t__ step_size; scalar_t__ min_delay_ms; } ;
struct dvb_frontend {int dummy; } ;



__attribute__((used)) static int atbm8830_get_tune_settings(struct dvb_frontend *fe,
 struct dvb_frontend_tune_settings *fesettings)
{
 fesettings->min_delay_ms = 0;
 fesettings->step_size = 0;
 fesettings->max_drift = 0;
 return 0;
}
