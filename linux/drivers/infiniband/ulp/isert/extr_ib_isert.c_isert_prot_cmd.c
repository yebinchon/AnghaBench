
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {scalar_t__ prot_op; } ;
struct isert_conn {scalar_t__ pi_support; } ;


 scalar_t__ TARGET_PROT_NORMAL ;

__attribute__((used)) static inline bool
isert_prot_cmd(struct isert_conn *conn, struct se_cmd *cmd)
{
 return (conn->pi_support &&
  cmd->prot_op != TARGET_PROT_NORMAL);
}
