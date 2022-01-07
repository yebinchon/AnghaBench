
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_conn {int hpd; } ;


 int nvkm_notify_put (int *) ;

void
nvkm_conn_fini(struct nvkm_conn *conn)
{
 nvkm_notify_put(&conn->hpd);
}
