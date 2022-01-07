
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcom_task {int tasknum; int num_bd; int bd_size; struct bcom_task* cookie; int bd; scalar_t__ irq; int bd_pa; void* priv; } ;
struct TYPE_4__ {TYPE_1__* tdt; int ofnode; int lock; } ;
struct TYPE_3__ {int stop; } ;


 int BCOM_MAX_TASKS ;
 int GFP_KERNEL ;
 TYPE_2__* bcom_eng ;
 int bcom_sram_alloc (int,int,int *) ;
 int bcom_sram_free (int ) ;
 int irq_dispose_mapping (scalar_t__) ;
 scalar_t__ irq_of_parse_and_map (int ,int) ;
 int kfree (struct bcom_task*) ;
 struct bcom_task* kmalloc_array (int,int,int ) ;
 struct bcom_task* kzalloc (int,int ) ;
 int memset (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct bcom_task *
bcom_task_alloc(int bd_count, int bd_size, int priv_size)
{
 int i, tasknum = -1;
 struct bcom_task *tsk;


 if (!bcom_eng)
  return ((void*)0);


 spin_lock(&bcom_eng->lock);

 for (i=0; i<BCOM_MAX_TASKS; i++)
  if (!bcom_eng->tdt[i].stop) {
   bcom_eng->tdt[i].stop = 0xfffffffful;
   tasknum = i;
   break;
  }

 spin_unlock(&bcom_eng->lock);

 if (tasknum < 0)
  return ((void*)0);


 tsk = kzalloc(sizeof(struct bcom_task) + priv_size, GFP_KERNEL);
 if (!tsk)
  goto error;

 tsk->tasknum = tasknum;
 if (priv_size)
  tsk->priv = (void*)tsk + sizeof(struct bcom_task);


 tsk->irq = irq_of_parse_and_map(bcom_eng->ofnode, tsk->tasknum);
 if (!tsk->irq)
  goto error;


 if (bd_count) {
  tsk->cookie = kmalloc_array(bd_count, sizeof(void *),
         GFP_KERNEL);
  if (!tsk->cookie)
   goto error;

  tsk->bd = bcom_sram_alloc(bd_count * bd_size, 4, &tsk->bd_pa);
  if (!tsk->bd)
   goto error;
  memset(tsk->bd, 0x00, bd_count * bd_size);

  tsk->num_bd = bd_count;
  tsk->bd_size = bd_size;
 }

 return tsk;

error:
 if (tsk) {
  if (tsk->irq)
   irq_dispose_mapping(tsk->irq);
  bcom_sram_free(tsk->bd);
  kfree(tsk->cookie);
  kfree(tsk);
 }

 bcom_eng->tdt[tasknum].stop = 0;

 return ((void*)0);
}
