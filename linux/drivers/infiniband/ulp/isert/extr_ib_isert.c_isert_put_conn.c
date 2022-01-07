
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int kref; } ;


 int isert_release_kref ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void
isert_put_conn(struct isert_conn *isert_conn)
{
 kref_put(&isert_conn->kref, isert_release_kref);
}
