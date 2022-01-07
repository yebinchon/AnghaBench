
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fritzcard {int * bch; } ;


 int modehdlc (int *,int) ;

__attribute__((used)) static void
inithdlc(struct fritzcard *fc)
{
 modehdlc(&fc->bch[0], -1);
 modehdlc(&fc->bch[1], -1);
}
