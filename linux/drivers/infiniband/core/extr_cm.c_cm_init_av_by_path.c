
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_path_rec {scalar_t__ packet_life_time; int pkey; } ;
struct rdma_ah_attr {int dummy; } ;
struct ib_gid_attr {int dummy; } ;
struct cm_port {int port_num; struct cm_device* cm_dev; } ;
struct cm_id_private {int dummy; } ;
struct cm_device {int ib_device; } ;
struct cm_av {int ah_attr; scalar_t__ timeout; struct cm_port* port; int pkey_index; } ;


 int EINVAL ;
 int add_cm_id_to_port_list (struct cm_id_private*,struct cm_av*,struct cm_port*) ;
 int be16_to_cpu (int ) ;
 struct cm_port* get_cm_port_from_path (struct sa_path_rec*,struct ib_gid_attr const*) ;
 int ib_find_cached_pkey (int ,int ,int ,int *) ;
 int ib_init_ah_attr_from_path (int ,int ,struct sa_path_rec*,struct rdma_ah_attr*,struct ib_gid_attr const*) ;
 int rdma_destroy_ah_attr (struct rdma_ah_attr*) ;
 int rdma_move_ah_attr (int *,struct rdma_ah_attr*) ;

__attribute__((used)) static int cm_init_av_by_path(struct sa_path_rec *path,
         const struct ib_gid_attr *sgid_attr,
         struct cm_av *av,
         struct cm_id_private *cm_id_priv)
{
 struct rdma_ah_attr new_ah_attr;
 struct cm_device *cm_dev;
 struct cm_port *port;
 int ret;

 port = get_cm_port_from_path(path, sgid_attr);
 if (!port)
  return -EINVAL;
 cm_dev = port->cm_dev;

 ret = ib_find_cached_pkey(cm_dev->ib_device, port->port_num,
      be16_to_cpu(path->pkey), &av->pkey_index);
 if (ret)
  return ret;

 av->port = port;
 ret = ib_init_ah_attr_from_path(cm_dev->ib_device, port->port_num, path,
     &new_ah_attr, sgid_attr);
 if (ret)
  return ret;

 av->timeout = path->packet_life_time + 1;

 ret = add_cm_id_to_port_list(cm_id_priv, av, port);
 if (ret) {
  rdma_destroy_ah_attr(&new_ah_attr);
  return ret;
 }
 rdma_move_ah_attr(&av->ah_attr, &new_ah_attr);
 return 0;
}
