; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_hwaddr_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_hwaddr_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fwnet_hwaddr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.fwnet_hwaddr*)* @fwnet_hwaddr_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnet_hwaddr_fifo(%union.fwnet_hwaddr* %0) #0 {
  %2 = alloca %union.fwnet_hwaddr*, align 8
  store %union.fwnet_hwaddr* %0, %union.fwnet_hwaddr** %2, align 8
  %3 = load %union.fwnet_hwaddr*, %union.fwnet_hwaddr** %2, align 8
  %4 = bitcast %union.fwnet_hwaddr* %3 to %struct.TYPE_2__*
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = call i64 @get_unaligned_be16(i32* %5)
  %7 = trunc i64 %6 to i32
  %8 = shl i32 %7, 32
  %9 = load %union.fwnet_hwaddr*, %union.fwnet_hwaddr** %2, align 8
  %10 = bitcast %union.fwnet_hwaddr* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @get_unaligned_be32(i32* %11)
  %13 = or i32 %8, %12
  ret i32 %13
}

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
