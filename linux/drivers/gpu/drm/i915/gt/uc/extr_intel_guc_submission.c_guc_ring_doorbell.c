
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_guc_client {int wq_lock; } ;
struct guc_doorbell_info {scalar_t__ db_status; int cookie; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ GUC_DOORBELL_ENABLED ;
 scalar_t__ READ_ONCE (int ) ;
 int WARN_ON_ONCE (int) ;
 struct guc_doorbell_info* __get_doorbell (struct intel_guc_client*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ xchg (int *,scalar_t__) ;

__attribute__((used)) static void guc_ring_doorbell(struct intel_guc_client *client)
{
 struct guc_doorbell_info *db;
 u32 cookie;

 lockdep_assert_held(&client->wq_lock);


 db = __get_doorbell(client);





 cookie = READ_ONCE(db->cookie);
 WARN_ON_ONCE(xchg(&db->cookie, cookie + 1 ?: cookie + 2) != cookie);


 GEM_BUG_ON(db->db_status != GUC_DOORBELL_ENABLED);
}
