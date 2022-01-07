
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_dev {int writeback_thread; } ;


 int IS_ERR_OR_NULL (int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static inline void bch_writeback_queue(struct cached_dev *dc)
{
 if (!IS_ERR_OR_NULL(dc->writeback_thread))
  wake_up_process(dc->writeback_thread);
}
