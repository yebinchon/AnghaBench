
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sockaddr_storage {int dummy; } ;
struct se_node_acl {int dummy; } ;


 int AF_UNSPEC ;
 int inet_pton_with_scope (int *,int ,char const*,int *,struct sockaddr_storage*) ;
 int init_net ;
 int pr_err (char*,char const*) ;
 int srpt_parse_guid (int *,char const*) ;
 int srpt_parse_i_port_id (int *,char const*) ;

__attribute__((used)) static int srpt_init_nodeacl(struct se_node_acl *se_nacl, const char *name)
{
 struct sockaddr_storage sa;
 u64 guid;
 u8 i_port_id[16];
 int ret;

 ret = srpt_parse_guid(&guid, name);
 if (ret < 0)
  ret = srpt_parse_i_port_id(i_port_id, name);
 if (ret < 0)
  ret = inet_pton_with_scope(&init_net, AF_UNSPEC, name, ((void*)0),
        &sa);
 if (ret < 0)
  pr_err("invalid initiator port ID %s\n", name);
 return ret;
}
