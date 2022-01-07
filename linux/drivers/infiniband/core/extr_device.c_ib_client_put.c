
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_client {int uses_zero; int uses; } ;


 int complete (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void ib_client_put(struct ib_client *client)
{
 if (refcount_dec_and_test(&client->uses))
  complete(&client->uses_zero);
}
