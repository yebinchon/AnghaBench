
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pms7003_state {int dummy; } ;


 int CMD_SLEEP ;
 int pms7003_do_cmd (struct pms7003_state*,int ) ;

__attribute__((used)) static void pms7003_stop(void *data)
{
 struct pms7003_state *state = data;

 pms7003_do_cmd(state, CMD_SLEEP);
}
