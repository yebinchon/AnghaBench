
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uverbs_api_write_method {int dummy; } ;
struct uverbs_api {int num_write_ex; int num_write; struct uverbs_api_write_method const** write_methods; struct uverbs_api_write_method const** write_ex_methods; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct uverbs_api_write_method const* ERR_PTR (int ) ;
 int IB_USER_VERBS_CMD_COMMAND_MASK ;
 int IB_USER_VERBS_CMD_FLAG_EXTENDED ;

__attribute__((used)) static inline const struct uverbs_api_write_method *
uapi_get_method(const struct uverbs_api *uapi, u32 command)
{
 u32 cmd_idx = command & IB_USER_VERBS_CMD_COMMAND_MASK;

 if (command & ~(u32)(IB_USER_VERBS_CMD_FLAG_EXTENDED |
        IB_USER_VERBS_CMD_COMMAND_MASK))
  return ERR_PTR(-EINVAL);

 if (command & IB_USER_VERBS_CMD_FLAG_EXTENDED) {
  if (cmd_idx >= uapi->num_write_ex)
   return ERR_PTR(-EOPNOTSUPP);
  return uapi->write_ex_methods[cmd_idx];
 }

 if (cmd_idx >= uapi->num_write)
  return ERR_PTR(-EOPNOTSUPP);
 return uapi->write_methods[cmd_idx];
}
