
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct decoded_addr {size_t imc; size_t channel; int chan_addr; int rank_address; int channel_rank; int dimm; int rank; int addr; TYPE_4__* dev; } ;
struct TYPE_9__ {TYPE_3__* imc; } ;
struct TYPE_8__ {TYPE_2__* chan; } ;
struct TYPE_7__ {TYPE_1__* dimms; } ;
struct TYPE_6__ {scalar_t__ close_pg; } ;


 int GENMASK_ULL (int,int ) ;
 int SKX_GET_RIRILV (TYPE_4__*,size_t,size_t,int,int,int ) ;
 int SKX_GET_RIRWAYNESS (TYPE_4__*,size_t,size_t,int,int ) ;
 int SKX_MAX_RIR ;
 int SKX_RIR_CHAN_RANK (int ) ;
 int SKX_RIR_LIMIT (int ) ;
 int SKX_RIR_OFFSET (int ) ;
 scalar_t__ SKX_RIR_VALID (int ) ;
 int SKX_RIR_WAYS (int ) ;
 int edac_dbg (int,char*,int ,...) ;

__attribute__((used)) static bool skx_rir_decode(struct decoded_addr *res)
{
 int i, idx, chan_rank;
 int shift;
 u32 rirway, rirlv;
 u64 rank_addr, prev_limit = 0, limit;

 if (res->dev->imc[res->imc].chan[res->channel].dimms[0].close_pg)
  shift = 6;
 else
  shift = 13;

 for (i = 0; i < SKX_MAX_RIR; i++) {
  SKX_GET_RIRWAYNESS(res->dev, res->imc, res->channel, i, rirway);
  limit = SKX_RIR_LIMIT(rirway);
  if (SKX_RIR_VALID(rirway)) {
   if (prev_limit <= res->chan_addr &&
       res->chan_addr <= limit)
    goto rir_found;
  }
  prev_limit = limit;
 }
 edac_dbg(0, "No RIR entry for 0x%llx\n", res->addr);
 return 0;

rir_found:
 rank_addr = res->chan_addr >> shift;
 rank_addr /= SKX_RIR_WAYS(rirway);
 rank_addr <<= shift;
 rank_addr |= res->chan_addr & GENMASK_ULL(shift - 1, 0);

 res->rank_address = rank_addr;
 idx = (res->chan_addr >> shift) % SKX_RIR_WAYS(rirway);

 SKX_GET_RIRILV(res->dev, res->imc, res->channel, idx, i, rirlv);
 res->rank_address = rank_addr - SKX_RIR_OFFSET(rirlv);
 chan_rank = SKX_RIR_CHAN_RANK(rirlv);
 res->channel_rank = chan_rank;
 res->dimm = chan_rank / 4;
 res->rank = chan_rank % 4;

 edac_dbg(2, "0x%llx: dimm=%d rank=%d chan_rank=%d rank_addr=0x%llx\n",
   res->addr, res->dimm, res->rank,
   res->channel_rank, res->rank_address);
 return 1;
}
