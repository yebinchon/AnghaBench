
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; } ;
struct ib_conn {TYPE_1__ reg_cqe; scalar_t__ post_recv_buf_count; } ;
struct iser_conn {int state_mutex; int conn_list; int up_completion; int ib_completion; int stop_completion; int state; struct ib_conn ib_conn; } ;


 int INIT_LIST_HEAD (int *) ;
 int ISER_CONN_INIT ;
 int init_completion (int *) ;
 int iser_reg_comp ;
 int mutex_init (int *) ;

void iser_conn_init(struct iser_conn *iser_conn)
{
 struct ib_conn *ib_conn = &iser_conn->ib_conn;

 iser_conn->state = ISER_CONN_INIT;
 init_completion(&iser_conn->stop_completion);
 init_completion(&iser_conn->ib_completion);
 init_completion(&iser_conn->up_completion);
 INIT_LIST_HEAD(&iser_conn->conn_list);
 mutex_init(&iser_conn->state_mutex);

 ib_conn->post_recv_buf_count = 0;
 ib_conn->reg_cqe.done = iser_reg_comp;
}
