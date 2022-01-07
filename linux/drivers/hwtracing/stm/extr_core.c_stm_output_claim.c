
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_master {scalar_t__ nr_free; int * chan_map; } ;
struct stm_output {scalar_t__ nr_chans; int channel; int lock; int master; } ;
struct stm_device {int mc_lock; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int bitmap_allocate_region (int *,int ,int ) ;
 int ilog2 (scalar_t__) ;
 int lockdep_assert_held (int *) ;
 struct stp_master* stm_master (struct stm_device*,int ) ;

__attribute__((used)) static void stm_output_claim(struct stm_device *stm, struct stm_output *output)
{
 struct stp_master *master = stm_master(stm, output->master);

 lockdep_assert_held(&stm->mc_lock);
 lockdep_assert_held(&output->lock);

 if (WARN_ON_ONCE(master->nr_free < output->nr_chans))
  return;

 bitmap_allocate_region(&master->chan_map[0], output->channel,
          ilog2(output->nr_chans));

 master->nr_free -= output->nr_chans;
}
