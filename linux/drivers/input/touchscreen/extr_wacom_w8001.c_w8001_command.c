
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001 {scalar_t__ response_type; int cmd_done; int serio; } ;


 int EIO ;
 int HZ ;
 scalar_t__ W8001_QUERY_PACKET ;
 int init_completion (int *) ;
 int serio_write (int ,unsigned char) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int w8001_command(struct w8001 *w8001, unsigned char command,
    bool wait_response)
{
 int rc;

 w8001->response_type = 0;
 init_completion(&w8001->cmd_done);

 rc = serio_write(w8001->serio, command);
 if (rc == 0 && wait_response) {

  wait_for_completion_timeout(&w8001->cmd_done, HZ);
  if (w8001->response_type != W8001_QUERY_PACKET)
   rc = -EIO;
 }

 return rc;
}
