
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {scalar_t__ state; int state_mutex; int up_completion; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;


 scalar_t__ ISER_CONN_DOWN ;
 scalar_t__ ISER_CONN_TERMINATING ;
 int iser_info (char*,struct iser_conn*,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int
iscsi_iser_ep_poll(struct iscsi_endpoint *ep, int timeout_ms)
{
 struct iser_conn *iser_conn = ep->dd_data;
 int rc;

 rc = wait_for_completion_interruptible_timeout(&iser_conn->up_completion,
             msecs_to_jiffies(timeout_ms));

 if (rc == 0) {
  mutex_lock(&iser_conn->state_mutex);
  if (iser_conn->state == ISER_CONN_TERMINATING ||
      iser_conn->state == ISER_CONN_DOWN)
   rc = -1;
  mutex_unlock(&iser_conn->state_mutex);
 }

 iser_info("iser conn %p rc = %d\n", iser_conn, rc);

 if (rc > 0)
  return 1;
 else if (!rc)
  return 0;
 else
  return rc;
}
