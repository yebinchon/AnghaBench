
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_conn {int hpd; } ;


 int kfree (struct nvkm_conn*) ;
 int nvkm_notify_fini (int *) ;

void
nvkm_conn_del(struct nvkm_conn **pconn)
{
 struct nvkm_conn *conn = *pconn;
 if (conn) {
  nvkm_notify_fini(&conn->hpd);
  kfree(*pconn);
  *pconn = ((void*)0);
 }
}
