; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_register_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_register_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i40iw_inetaddr_notifier = common dso_local global i32 0, align 4
@i40iw_inetaddr6_notifier = common dso_local global i32 0, align 4
@i40iw_net_notifier = common dso_local global i32 0, align 4
@i40iw_netdevice_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i40iw_register_notifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_register_notifiers() #0 {
  %1 = call i32 @register_inetaddr_notifier(i32* @i40iw_inetaddr_notifier)
  %2 = call i32 @register_inet6addr_notifier(i32* @i40iw_inetaddr6_notifier)
  %3 = call i32 @register_netevent_notifier(i32* @i40iw_net_notifier)
  %4 = call i32 @register_netdevice_notifier(i32* @i40iw_netdevice_notifier)
  ret void
}

declare dso_local i32 @register_inetaddr_notifier(i32*) #1

declare dso_local i32 @register_inet6addr_notifier(i32*) #1

declare dso_local i32 @register_netevent_notifier(i32*) #1

declare dso_local i32 @register_netdevice_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
