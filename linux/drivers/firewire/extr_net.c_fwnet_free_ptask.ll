; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_free_ptask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_free_ptask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnet_packet_task = type { i32 }

@fwnet_packet_task_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwnet_packet_task*)* @fwnet_free_ptask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwnet_free_ptask(%struct.fwnet_packet_task* %0) #0 {
  %2 = alloca %struct.fwnet_packet_task*, align 8
  store %struct.fwnet_packet_task* %0, %struct.fwnet_packet_task** %2, align 8
  %3 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %2, align 8
  %4 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_kfree_skb_any(i32 %5)
  %7 = load i32, i32* @fwnet_packet_task_cache, align 4
  %8 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %2, align 8
  %9 = call i32 @kmem_cache_free(i32 %7, %struct.fwnet_packet_task* %8)
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fwnet_packet_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
