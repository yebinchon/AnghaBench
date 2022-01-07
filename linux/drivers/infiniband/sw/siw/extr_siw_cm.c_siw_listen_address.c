
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct siw_device {int dummy; } ;
struct siw_cep {int state; int * sock; struct iw_cm_id* cm_id; int listenq; } ;
struct list_head {int dummy; } ;
struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;int device; scalar_t__ provider_data; int (* add_ref ) (struct iw_cm_id*) ;} ;
typedef int s_val ;
struct TYPE_2__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;int (* listen ) (struct socket*,int) ;} ;


 int AF_INET ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int IPPROTO_TCP ;
 int SIW_EPSTATE_CLOSED ;
 int SIW_EPSTATE_LISTENING ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 scalar_t__ kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 struct siw_cep* siw_cep_alloc (struct siw_device*) ;
 int siw_cep_put (struct siw_cep*) ;
 int siw_cep_set_free (struct siw_cep*) ;
 int siw_cep_set_inuse (struct siw_cep*) ;
 int siw_cep_socket_assoc (struct siw_cep*,struct socket*) ;
 int siw_cm_alloc_work (struct siw_cep*,int) ;
 int siw_dbg (int ,char*,int,...) ;
 int siw_socket_disassoc (struct socket*) ;
 int sock_create (int,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct sockaddr*,int) ;
 int stub2 (struct socket*,int) ;
 int stub3 (struct iw_cm_id*) ;
 int stub4 (struct iw_cm_id*) ;
 struct siw_device* to_siw_dev (int ) ;

__attribute__((used)) static int siw_listen_address(struct iw_cm_id *id, int backlog,
         struct sockaddr *laddr, int addr_family)
{
 struct socket *s;
 struct siw_cep *cep = ((void*)0);
 struct siw_device *sdev = to_siw_dev(id->device);
 int rv = 0, s_val;

 rv = sock_create(addr_family, SOCK_STREAM, IPPROTO_TCP, &s);
 if (rv < 0)
  return rv;




 s_val = 1;
 rv = kernel_setsockopt(s, SOL_SOCKET, SO_REUSEADDR, (char *)&s_val,
          sizeof(s_val));
 if (rv) {
  siw_dbg(id->device, "setsockopt error: %d\n", rv);
  goto error;
 }
 rv = s->ops->bind(s, laddr, addr_family == AF_INET ?
        sizeof(struct sockaddr_in) :
        sizeof(struct sockaddr_in6));
 if (rv) {
  siw_dbg(id->device, "socket bind error: %d\n", rv);
  goto error;
 }
 cep = siw_cep_alloc(sdev);
 if (!cep) {
  rv = -ENOMEM;
  goto error;
 }
 siw_cep_socket_assoc(cep, s);

 rv = siw_cm_alloc_work(cep, backlog);
 if (rv) {
  siw_dbg(id->device,
   "alloc_work error %d, backlog %d\n",
   rv, backlog);
  goto error;
 }
 rv = s->ops->listen(s, backlog);
 if (rv) {
  siw_dbg(id->device, "listen error %d\n", rv);
  goto error;
 }
 cep->cm_id = id;
 id->add_ref(id);
 if (!id->provider_data) {
  id->provider_data =
   kmalloc(sizeof(struct list_head), GFP_KERNEL);
  if (!id->provider_data) {
   rv = -ENOMEM;
   goto error;
  }
  INIT_LIST_HEAD((struct list_head *)id->provider_data);
 }
 list_add_tail(&cep->listenq, (struct list_head *)id->provider_data);
 cep->state = SIW_EPSTATE_LISTENING;

 if (addr_family == AF_INET)
  siw_dbg(id->device, "Listen at laddr %pI4 %u\n",
   &(((struct sockaddr_in *)laddr)->sin_addr),
   ((struct sockaddr_in *)laddr)->sin_port);
 else
  siw_dbg(id->device, "Listen at laddr %pI6 %u\n",
   &(((struct sockaddr_in6 *)laddr)->sin6_addr),
   ((struct sockaddr_in6 *)laddr)->sin6_port);

 return 0;

error:
 siw_dbg(id->device, "failed: %d\n", rv);

 if (cep) {
  siw_cep_set_inuse(cep);

  if (cep->cm_id) {
   cep->cm_id->rem_ref(cep->cm_id);
   cep->cm_id = ((void*)0);
  }
  cep->sock = ((void*)0);
  siw_socket_disassoc(s);
  cep->state = SIW_EPSTATE_CLOSED;

  siw_cep_set_free(cep);
  siw_cep_put(cep);
 }
 sock_release(s);

 return rv;
}
