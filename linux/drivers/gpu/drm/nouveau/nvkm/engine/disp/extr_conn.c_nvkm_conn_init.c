
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_conn {int hpd; } ;


 int nvkm_notify_get (int *) ;

void
nvkm_conn_init(struct nvkm_conn *conn)
{
 nvkm_notify_get(&conn->hpd);
}
