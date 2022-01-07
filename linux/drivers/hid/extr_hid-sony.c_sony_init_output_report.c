
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {void (* send_output_report ) (struct sony_sc*) ;int state_worker_initialized; int state_worker; } ;


 int INIT_WORK (int *,int ) ;
 int sony_state_worker ;

__attribute__((used)) static inline void sony_init_output_report(struct sony_sc *sc,
    void (*send_output_report)(struct sony_sc *))
{
 sc->send_output_report = send_output_report;

 if (!sc->state_worker_initialized)
  INIT_WORK(&sc->state_worker, sony_state_worker);

 sc->state_worker_initialized = 1;
}
