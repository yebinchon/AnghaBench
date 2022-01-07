; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_channel_to_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_channel_to_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_ops = type { i32 }
%struct.tegra_bpmp_channel = type { %struct.tegra_bpmp* }
%struct.tegra_bpmp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_bpmp_ops* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_bpmp_ops* (%struct.tegra_bpmp_channel*)* @channel_to_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_bpmp_ops* @channel_to_ops(%struct.tegra_bpmp_channel* %0) #0 {
  %2 = alloca %struct.tegra_bpmp_channel*, align 8
  %3 = alloca %struct.tegra_bpmp*, align 8
  store %struct.tegra_bpmp_channel* %0, %struct.tegra_bpmp_channel** %2, align 8
  %4 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %4, i32 0, i32 0
  %6 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  store %struct.tegra_bpmp* %6, %struct.tegra_bpmp** %3, align 8
  %7 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.tegra_bpmp_ops*, %struct.tegra_bpmp_ops** %10, align 8
  ret %struct.tegra_bpmp_ops* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
