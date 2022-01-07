
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* debug; } ;
struct TYPE_7__ {TYPE_1__ dch; } ;
struct TYPE_10__ {TYPE_4__* hscx; TYPE_2__ isac; } ;
struct inf_hw {TYPE_5__ ipac; } ;
struct TYPE_8__ {void* debug; } ;
struct TYPE_9__ {TYPE_3__ bch; } ;


 void* debug ;

__attribute__((used)) static void
_set_debug(struct inf_hw *card)
{
 card->ipac.isac.dch.debug = debug;
 card->ipac.hscx[0].bch.debug = debug;
 card->ipac.hscx[1].bch.debug = debug;
}
