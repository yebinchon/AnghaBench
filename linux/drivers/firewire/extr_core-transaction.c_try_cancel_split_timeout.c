
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_transaction {int split_timeout_timer; scalar_t__ is_split_transaction; } ;


 int del_timer (int *) ;

__attribute__((used)) static int try_cancel_split_timeout(struct fw_transaction *t)
{
 if (t->is_split_transaction)
  return del_timer(&t->split_timeout_timer);
 else
  return 1;
}
