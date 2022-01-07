
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int DSSERR (char*) ;

__attribute__((used)) static void dsi_te_timeout(struct timer_list *unused)
{
 DSSERR("TE not received for 250ms!\n");
}
