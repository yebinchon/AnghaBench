; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra210.c_tegra210_bpmp_ring_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra210.c_tegra210_bpmp_ring_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { %struct.tegra210_bpmp* }
%struct.tegra210_bpmp = type { %struct.irq_data* }
%struct.irq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.irq_data*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*)* @tegra210_bpmp_ring_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_bpmp_ring_doorbell(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bpmp*, align 8
  %4 = alloca %struct.tegra210_bpmp*, align 8
  %5 = alloca %struct.irq_data*, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %3, align 8
  %6 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %6, i32 0, i32 0
  %8 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %7, align 8
  store %struct.tegra210_bpmp* %8, %struct.tegra210_bpmp** %4, align 8
  %9 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %4, align 8
  %10 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %9, i32 0, i32 0
  %11 = load %struct.irq_data*, %struct.irq_data** %10, align 8
  store %struct.irq_data* %11, %struct.irq_data** %5, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %15, align 8
  %17 = icmp ne i32 (%struct.irq_data*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %22, align 8
  %24 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %25 = call i32 %23(%struct.irq_data* %24)
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
