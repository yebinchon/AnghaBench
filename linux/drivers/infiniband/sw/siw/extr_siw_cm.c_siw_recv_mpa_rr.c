
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int word ;
typedef int u32 ;
typedef int u16 ;
struct socket {int dummy; } ;
struct TYPE_3__ {int pd_len; } ;
struct mpa_rr {TYPE_1__ params; } ;
struct TYPE_4__ {int bytes_rcvd; char* pdata; struct mpa_rr hdr; } ;
struct siw_cep {TYPE_2__ mpa; struct socket* sock; } ;


 int EAGAIN ;
 int ECONNABORTED ;
 int ENOMEM ;
 int EPIPE ;
 int EPROTO ;
 int GFP_KERNEL ;
 scalar_t__ MPA_MAX_PRIVDATA ;
 int MSG_DONTWAIT ;
 scalar_t__ be16_to_cpu (int ) ;
 char* kmalloc (int,int ) ;
 int ksock_recv (struct socket*,char*,int,int ) ;
 int siw_dbg_cep (struct siw_cep*,char*,...) ;

__attribute__((used)) static int siw_recv_mpa_rr(struct siw_cep *cep)
{
 struct mpa_rr *hdr = &cep->mpa.hdr;
 struct socket *s = cep->sock;
 u16 pd_len;
 int rcvd, to_rcv;

 if (cep->mpa.bytes_rcvd < sizeof(struct mpa_rr)) {
  rcvd = ksock_recv(s, (char *)hdr + cep->mpa.bytes_rcvd,
      sizeof(struct mpa_rr) - cep->mpa.bytes_rcvd,
      0);
  if (rcvd <= 0)
   return -ECONNABORTED;

  cep->mpa.bytes_rcvd += rcvd;

  if (cep->mpa.bytes_rcvd < sizeof(struct mpa_rr))
   return -EAGAIN;

  if (be16_to_cpu(hdr->params.pd_len) > MPA_MAX_PRIVDATA)
   return -EPROTO;
 }
 pd_len = be16_to_cpu(hdr->params.pd_len);






 to_rcv = pd_len - (cep->mpa.bytes_rcvd - sizeof(struct mpa_rr));

 if (!to_rcv) {





  u32 word;

  rcvd = ksock_recv(s, (char *)&word, sizeof(word), MSG_DONTWAIT);
  if (rcvd == -EAGAIN)
   return 0;

  if (rcvd == 0) {
   siw_dbg_cep(cep, "peer EOF\n");
   return -EPIPE;
  }
  if (rcvd < 0) {
   siw_dbg_cep(cep, "error: %d\n", rcvd);
   return rcvd;
  }
  siw_dbg_cep(cep, "peer sent extra data: %d\n", rcvd);

  return -EPROTO;
 }





 if (!cep->mpa.pdata) {
  cep->mpa.pdata = kmalloc(pd_len + 4, GFP_KERNEL);
  if (!cep->mpa.pdata)
   return -ENOMEM;
 }
 rcvd = ksock_recv(
  s, cep->mpa.pdata + cep->mpa.bytes_rcvd - sizeof(struct mpa_rr),
  to_rcv + 4, MSG_DONTWAIT);

 if (rcvd < 0)
  return rcvd;

 if (rcvd > to_rcv)
  return -EPROTO;

 cep->mpa.bytes_rcvd += rcvd;

 if (to_rcv == rcvd) {
  siw_dbg_cep(cep, "%d bytes private data received\n", pd_len);
  return 0;
 }
 return -EAGAIN;
}
