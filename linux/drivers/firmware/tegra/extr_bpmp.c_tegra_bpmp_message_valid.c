
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ data; } ;
struct tegra_bpmp_message {TYPE_2__ rx; TYPE_1__ tx; } ;


 scalar_t__ MSG_DATA_MIN_SZ ;

__attribute__((used)) static bool tegra_bpmp_message_valid(const struct tegra_bpmp_message *msg)
{
 return (msg->tx.size <= MSG_DATA_MIN_SZ) &&
        (msg->rx.size <= MSG_DATA_MIN_SZ) &&
        (msg->tx.size == 0 || msg->tx.data) &&
        (msg->rx.size == 0 || msg->rx.data);
}
