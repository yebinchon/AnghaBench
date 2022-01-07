
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sa_client {int comp; int users; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static inline void ib_sa_client_put(struct ib_sa_client *client)
{
 if (atomic_dec_and_test(&client->users))
  complete(&client->comp);
}
