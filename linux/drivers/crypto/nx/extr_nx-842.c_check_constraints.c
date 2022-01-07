
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx842_constraints {scalar_t__ maximum; } ;


 scalar_t__ BOUNCE_BUFFER_SIZE ;

__attribute__((used)) static void check_constraints(struct nx842_constraints *c)
{

 if (c->maximum > BOUNCE_BUFFER_SIZE)
  c->maximum = BOUNCE_BUFFER_SIZE;
}
