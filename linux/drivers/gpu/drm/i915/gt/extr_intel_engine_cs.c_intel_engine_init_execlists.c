
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_execlists {int port_mask; int queue; int queue_priority_hint; int inflight; int active; int pending; } ;
struct intel_engine_cs {struct intel_engine_execlists execlists; } ;


 scalar_t__ EXECLIST_MAX_PORTS ;
 int GEM_BUG_ON (int) ;
 int INT_MIN ;
 int RB_ROOT_CACHED ;
 scalar_t__ execlists_num_ports (struct intel_engine_execlists* const) ;
 int is_power_of_2 (scalar_t__) ;
 int memset (int ,int ,int) ;

void intel_engine_init_execlists(struct intel_engine_cs *engine)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;

 execlists->port_mask = 1;
 GEM_BUG_ON(!is_power_of_2(execlists_num_ports(execlists)));
 GEM_BUG_ON(execlists_num_ports(execlists) > EXECLIST_MAX_PORTS);

 memset(execlists->pending, 0, sizeof(execlists->pending));
 execlists->active =
  memset(execlists->inflight, 0, sizeof(execlists->inflight));

 execlists->queue_priority_hint = INT_MIN;
 execlists->queue = RB_ROOT_CACHED;
}
