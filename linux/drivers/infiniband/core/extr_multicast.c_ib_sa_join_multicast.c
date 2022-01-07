
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ib_sa_mcmember_rec {int mgid; } ;
struct ib_sa_multicast {int (* callback ) (int,struct ib_sa_multicast*) ;void* context; int comp_mask; struct ib_sa_mcmember_rec rec; } ;
struct mcast_member {struct ib_sa_multicast multicast; int group; int state; int refcount; int comp; struct ib_sa_client* client; } ;
struct mcast_device {size_t start_port; int * port; } ;
struct ib_sa_client {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int ib_sa_comp_mask ;
typedef int gfp_t ;


 int ENODEV ;
 int ENOMEM ;
 struct ib_sa_multicast* ERR_PTR (int) ;
 int MCAST_JOINING ;
 int acquire_group (int *,int *,int ) ;
 int atomic_set (int *,int) ;
 struct mcast_device* ib_get_client_data (struct ib_device*,int *) ;
 int ib_sa_client_get (struct ib_sa_client*) ;
 int ib_sa_client_put (struct ib_sa_client*) ;
 int init_completion (int *) ;
 int kfree (struct mcast_member*) ;
 struct mcast_member* kmalloc (int,int ) ;
 int mcast_client ;
 int queue_join (struct mcast_member*) ;

struct ib_sa_multicast *
ib_sa_join_multicast(struct ib_sa_client *client,
       struct ib_device *device, u8 port_num,
       struct ib_sa_mcmember_rec *rec,
       ib_sa_comp_mask comp_mask, gfp_t gfp_mask,
       int (*callback)(int status,
         struct ib_sa_multicast *multicast),
       void *context)
{
 struct mcast_device *dev;
 struct mcast_member *member;
 struct ib_sa_multicast *multicast;
 int ret;

 dev = ib_get_client_data(device, &mcast_client);
 if (!dev)
  return ERR_PTR(-ENODEV);

 member = kmalloc(sizeof *member, gfp_mask);
 if (!member)
  return ERR_PTR(-ENOMEM);

 ib_sa_client_get(client);
 member->client = client;
 member->multicast.rec = *rec;
 member->multicast.comp_mask = comp_mask;
 member->multicast.callback = callback;
 member->multicast.context = context;
 init_completion(&member->comp);
 atomic_set(&member->refcount, 1);
 member->state = MCAST_JOINING;

 member->group = acquire_group(&dev->port[port_num - dev->start_port],
          &rec->mgid, gfp_mask);
 if (!member->group) {
  ret = -ENOMEM;
  goto err;
 }







 multicast = &member->multicast;
 queue_join(member);
 return multicast;

err:
 ib_sa_client_put(client);
 kfree(member);
 return ERR_PTR(ret);
}
