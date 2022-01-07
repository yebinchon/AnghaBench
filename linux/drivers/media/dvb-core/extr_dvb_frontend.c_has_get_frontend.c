
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int get_frontend; } ;
struct dvb_frontend {TYPE_1__ ops; } ;



__attribute__((used)) static bool has_get_frontend(struct dvb_frontend *fe)
{
 return fe->ops.get_frontend;
}
