
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int dummy; } ;
struct completion {int dummy; } ;


 int init_completion (struct completion*) ;
 int wait_for_completion_interruptible (struct completion*) ;

__attribute__((used)) static void isert_get_rx_pdu(struct iscsi_conn *conn)
{
 struct completion comp;

 init_completion(&comp);

 wait_for_completion_interruptible(&comp);
}
