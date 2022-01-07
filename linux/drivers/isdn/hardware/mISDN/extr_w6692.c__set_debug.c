
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* debug; } ;
struct w6692_hw {TYPE_3__* bc; TYPE_1__ dch; } ;
struct TYPE_5__ {void* debug; } ;
struct TYPE_6__ {TYPE_2__ bch; } ;


 void* debug ;

__attribute__((used)) static void
_set_debug(struct w6692_hw *card)
{
 card->dch.debug = debug;
 card->bc[0].bch.debug = debug;
 card->bc[1].bch.debug = debug;
}
