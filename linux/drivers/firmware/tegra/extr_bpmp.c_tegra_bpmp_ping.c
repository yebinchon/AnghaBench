
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; struct tegra_bpmp_message* data; } ;
struct TYPE_3__ {int size; struct tegra_bpmp_message* data; } ;
struct tegra_bpmp_message {int challenge; int reply; TYPE_2__ rx; TYPE_1__ tx; int mrq; } ;
struct tegra_bpmp {int dev; } ;
struct mrq_ping_response {int challenge; int reply; TYPE_2__ rx; TYPE_1__ tx; int mrq; } ;
struct mrq_ping_request {int challenge; int reply; TYPE_2__ rx; TYPE_1__ tx; int mrq; } ;
typedef int response ;
typedef int request ;
typedef int msg ;
typedef int ktime_t ;


 int MRQ_PING ;
 int dev_dbg (int ,char*,int,int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memset (struct tegra_bpmp_message*,int ,int) ;
 int tegra_bpmp_transfer_atomic (struct tegra_bpmp*,struct tegra_bpmp_message*) ;

__attribute__((used)) static int tegra_bpmp_ping(struct tegra_bpmp *bpmp)
{
 struct mrq_ping_response response;
 struct mrq_ping_request request;
 struct tegra_bpmp_message msg;
 unsigned long flags;
 ktime_t start, end;
 int err;

 memset(&request, 0, sizeof(request));
 request.challenge = 1;

 memset(&response, 0, sizeof(response));

 memset(&msg, 0, sizeof(msg));
 msg.mrq = MRQ_PING;
 msg.tx.data = &request;
 msg.tx.size = sizeof(request);
 msg.rx.data = &response;
 msg.rx.size = sizeof(response);

 local_irq_save(flags);
 start = ktime_get();
 err = tegra_bpmp_transfer_atomic(bpmp, &msg);
 end = ktime_get();
 local_irq_restore(flags);

 if (!err)
  dev_dbg(bpmp->dev,
   "ping ok: challenge: %u, response: %u, time: %lld\n",
   request.challenge, response.reply,
   ktime_to_us(ktime_sub(end, start)));

 return err;
}
