
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_tune_settings {int min_delay_ms; scalar_t__ max_drift; scalar_t__ step_size; } ;
struct dvb_frontend {int dummy; } ;



__attribute__((used)) static int bcm3510_get_tune_settings(struct dvb_frontend *fe, struct dvb_frontend_tune_settings *s)
{
 s->min_delay_ms = 1000;
 s->step_size = 0;
 s->max_drift = 0;
 return 0;
}
