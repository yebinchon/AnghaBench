
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_req {int work; } ;


 int addr_wq ;
 unsigned long jiffies ;
 int mod_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void set_timeout(struct addr_req *req, unsigned long time)
{
 unsigned long delay;

 delay = time - jiffies;
 if ((long)delay < 0)
  delay = 0;

 mod_delayed_work(addr_wq, &req->work, delay);
}
