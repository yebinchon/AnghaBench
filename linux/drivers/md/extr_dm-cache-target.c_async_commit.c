
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batcher {int commit_work; int wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void async_commit(struct batcher *b)
{
 queue_work(b->wq, &b->commit_work);
}
