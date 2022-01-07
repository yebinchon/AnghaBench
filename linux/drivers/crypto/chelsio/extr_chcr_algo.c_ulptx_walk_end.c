
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ulptx_walk {int nents; TYPE_1__* sgl; } ;
struct TYPE_2__ {int cmd_nsge; } ;


 int ULPTX_CMD_V (int ) ;
 int ULPTX_NSGE_V (int ) ;
 int ULP_TX_SC_DSGL ;
 int htonl (int) ;

__attribute__((used)) static inline void ulptx_walk_end(struct ulptx_walk *walk)
{
 walk->sgl->cmd_nsge = htonl(ULPTX_CMD_V(ULP_TX_SC_DSGL) |
         ULPTX_NSGE_V(walk->nents));
}
