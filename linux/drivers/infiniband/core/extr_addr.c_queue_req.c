
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_req {int timeout; int list; } ;


 int list_add_tail (int *,int *) ;
 int lock ;
 int req_list ;
 int set_timeout (struct addr_req*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void queue_req(struct addr_req *req)
{
 spin_lock_bh(&lock);
 list_add_tail(&req->list, &req_list);
 set_timeout(req, req->timeout);
 spin_unlock_bh(&lock);
}
