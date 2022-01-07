
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {int kref; } ;


 int gb_connection_kref_release ;
 int kref_put (int *,int ) ;
 int trace_gb_connection_put (struct gb_connection*) ;

__attribute__((used)) static void gb_connection_put(struct gb_connection *connection)
{
 trace_gb_connection_put(connection);

 kref_put(&connection->kref, gb_connection_kref_release);
}
