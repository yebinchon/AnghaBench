
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {int kref; } ;


 int kref_get (int *) ;
 int trace_gb_connection_get (struct gb_connection*) ;

__attribute__((used)) static void gb_connection_get(struct gb_connection *connection)
{
 kref_get(&connection->kref);

 trace_gb_connection_get(connection);
}
