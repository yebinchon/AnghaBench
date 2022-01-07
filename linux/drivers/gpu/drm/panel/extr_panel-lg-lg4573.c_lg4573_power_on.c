
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg4573 {int dummy; } ;


 int lg4573_display_on (struct lg4573*) ;

__attribute__((used)) static int lg4573_power_on(struct lg4573 *ctx)
{
 return lg4573_display_on(ctx);
}
