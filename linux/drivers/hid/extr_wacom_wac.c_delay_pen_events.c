
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {TYPE_1__* shared; } ;
struct TYPE_2__ {scalar_t__ touch_down; } ;


 scalar_t__ touch_arbitration ;

__attribute__((used)) static inline bool delay_pen_events(struct wacom_wac *wacom)
{
 return (wacom->shared->touch_down && touch_arbitration);
}
