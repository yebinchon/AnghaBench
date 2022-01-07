
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;



__attribute__((used)) static int s5h1432_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 return 0;
}
