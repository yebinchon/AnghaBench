
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryp_ctx {int session_id; } ;


 int atomic_inc (int *) ;
 int atomic_inc_and_test (int *) ;
 int atomic_read (int *) ;
 int session_id ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void add_session_id(struct cryp_ctx *ctx)
{




 if (unlikely(atomic_inc_and_test(&session_id)))
  atomic_inc(&session_id);

 ctx->session_id = atomic_read(&session_id);
}
