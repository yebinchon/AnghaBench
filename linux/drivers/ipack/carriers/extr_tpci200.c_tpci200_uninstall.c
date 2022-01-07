
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpci200_board {int slots; } ;


 int kfree (int ) ;
 int tpci200_unregister (struct tpci200_board*) ;

__attribute__((used)) static void tpci200_uninstall(struct tpci200_board *tpci200)
{
 tpci200_unregister(tpci200);
 kfree(tpci200->slots);
}
