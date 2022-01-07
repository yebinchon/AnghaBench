
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_output {int lock; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static void stm_output_init(struct stm_output *output)
{
 spin_lock_init(&output->lock);
}
