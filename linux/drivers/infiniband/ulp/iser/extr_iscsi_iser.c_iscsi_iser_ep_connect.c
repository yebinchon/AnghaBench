
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct iser_conn {struct iscsi_endpoint* ep; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;


 int ENOMEM ;
 struct iscsi_endpoint* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct iscsi_endpoint* iscsi_create_endpoint (int ) ;
 int iscsi_destroy_endpoint (struct iscsi_endpoint*) ;
 int iser_conn_init (struct iser_conn*) ;
 int iser_connect (struct iser_conn*,int *,struct sockaddr*,int) ;
 struct iser_conn* kzalloc (int,int ) ;

__attribute__((used)) static struct iscsi_endpoint *
iscsi_iser_ep_connect(struct Scsi_Host *shost, struct sockaddr *dst_addr,
        int non_blocking)
{
 int err;
 struct iser_conn *iser_conn;
 struct iscsi_endpoint *ep;

 ep = iscsi_create_endpoint(0);
 if (!ep)
  return ERR_PTR(-ENOMEM);

 iser_conn = kzalloc(sizeof(*iser_conn), GFP_KERNEL);
 if (!iser_conn) {
  err = -ENOMEM;
  goto failure;
 }

 ep->dd_data = iser_conn;
 iser_conn->ep = ep;
 iser_conn_init(iser_conn);

 err = iser_connect(iser_conn, ((void*)0), dst_addr, non_blocking);
 if (err)
  goto failure;

 return ep;
failure:
 iscsi_destroy_endpoint(ep);
 return ERR_PTR(err);
}
