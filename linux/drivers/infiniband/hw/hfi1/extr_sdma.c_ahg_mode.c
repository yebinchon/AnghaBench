
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdma_txreq {TYPE_1__* descp; } ;
struct TYPE_2__ {int* qw; } ;


 int SDMA_DESC1_HEADER_MODE_SHIFT ;
 int SDMA_DESC1_HEADER_MODE_SMASK ;

__attribute__((used)) static inline u8 ahg_mode(struct sdma_txreq *tx)
{
 return (tx->descp[0].qw[1] & SDMA_DESC1_HEADER_MODE_SMASK)
  >> SDMA_DESC1_HEADER_MODE_SHIFT;
}
