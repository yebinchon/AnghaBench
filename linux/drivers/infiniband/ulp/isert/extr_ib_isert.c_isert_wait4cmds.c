
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_conn {TYPE_1__* sess; } ;
struct TYPE_2__ {int se_sess; } ;


 int isert_info (char*,struct iscsi_conn*) ;
 int target_sess_cmd_list_set_waiting (int ) ;
 int target_wait_for_sess_cmds (int ) ;

__attribute__((used)) static void
isert_wait4cmds(struct iscsi_conn *conn)
{
 isert_info("iscsi_conn %p\n", conn);

 if (conn->sess) {
  target_sess_cmd_list_set_waiting(conn->sess->se_sess);
  target_wait_for_sess_cmds(conn->sess->se_sess);
 }
}
