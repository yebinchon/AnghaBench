
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_resource {scalar_t__ release; } ;


 scalar_t__ release_transaction ;

__attribute__((used)) static int is_outbound_transaction_resource(int id, void *p, void *data)
{
 struct client_resource *resource = p;

 return resource->release == release_transaction;
}
