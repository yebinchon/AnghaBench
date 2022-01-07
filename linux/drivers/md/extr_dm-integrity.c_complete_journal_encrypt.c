
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct journal_completion {TYPE_1__* ic; } ;
struct crypto_async_request {struct journal_completion* data; } ;
struct TYPE_2__ {int crypto_backoff; } ;


 int EINPROGRESS ;
 int complete (int *) ;
 int complete_journal_op (struct journal_completion*) ;
 int dm_integrity_io_error (TYPE_1__*,char*,int) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void complete_journal_encrypt(struct crypto_async_request *req, int err)
{
 struct journal_completion *comp = req->data;
 if (unlikely(err)) {
  if (likely(err == -EINPROGRESS)) {
   complete(&comp->ic->crypto_backoff);
   return;
  }
  dm_integrity_io_error(comp->ic, "asynchronous encrypt", err);
 }
 complete_journal_op(comp);
}
