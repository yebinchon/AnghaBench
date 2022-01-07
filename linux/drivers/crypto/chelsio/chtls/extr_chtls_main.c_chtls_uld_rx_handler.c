
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct sk_buff {int dummy; } ;
struct pkt_gl {int dummy; } ;
struct chtls_dev {int dummy; } ;
typedef int __be64 ;


 unsigned int CPL_RX_PKT ;
 int ENOMEM ;
 int RX_PULL_LEN ;
 int chtls_recv (struct chtls_dev*,struct sk_buff**,int const*) ;
 scalar_t__ chtls_recv_packet (struct chtls_dev*,struct pkt_gl const*,int const*) ;
 int chtls_recv_rsp (struct chtls_dev*,int const*) ;
 struct sk_buff* cxgb4_pktgl_to_skb (struct pkt_gl const*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int chtls_uld_rx_handler(void *handle, const __be64 *rsp,
    const struct pkt_gl *gl)
{
 struct chtls_dev *cdev = handle;
 unsigned int opcode;
 struct sk_buff *skb;

 opcode = *(u8 *)rsp;

 if (unlikely(opcode == CPL_RX_PKT)) {
  if (chtls_recv_packet(cdev, gl, rsp) < 0)
   goto nomem;
  return 0;
 }

 if (!gl)
  return chtls_recv_rsp(cdev, rsp);


 skb = cxgb4_pktgl_to_skb(gl, 128, 128);
 if (unlikely(!skb))
  goto nomem;
 chtls_recv(cdev, &skb, rsp);
 return 0;

nomem:
 return -ENOMEM;
}
