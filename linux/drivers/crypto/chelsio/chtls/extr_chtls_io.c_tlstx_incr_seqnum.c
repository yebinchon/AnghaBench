
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct chtls_hws {int tx_seq_no; } ;



__attribute__((used)) static u64 tlstx_incr_seqnum(struct chtls_hws *hws)
{
 return hws->tx_seq_no++;
}
