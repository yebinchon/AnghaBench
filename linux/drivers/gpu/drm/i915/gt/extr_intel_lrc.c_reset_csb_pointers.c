
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_execlists {int csb_size; unsigned int csb_head; int * csb_status; int * csb_write; } ;
struct intel_engine_cs {struct intel_engine_execlists execlists; } ;


 int WRITE_ONCE (int ,unsigned int const) ;
 int invalidate_csb_entries (int *,int *) ;
 int ring_set_paused (struct intel_engine_cs*,int ) ;
 int wmb () ;

__attribute__((used)) static void reset_csb_pointers(struct intel_engine_cs *engine)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;
 const unsigned int reset_value = execlists->csb_size - 1;

 ring_set_paused(engine, 0);
 execlists->csb_head = reset_value;
 WRITE_ONCE(*execlists->csb_write, reset_value);
 wmb();

 invalidate_csb_entries(&execlists->csb_status[0],
          &execlists->csb_status[reset_value]);
}
