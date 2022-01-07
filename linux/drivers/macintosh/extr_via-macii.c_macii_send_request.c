
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; } ;


 int macii_poll () ;
 int macii_write (struct adb_request*) ;

__attribute__((used)) static int macii_send_request(struct adb_request *req, int sync)
{
 int err;

 err = macii_write(req);
 if (err)
  return err;

 if (sync)
  while (!req->complete)
   macii_poll();

 return 0;
}
