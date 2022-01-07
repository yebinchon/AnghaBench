; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c_host1x_intr_syncpt_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c_host1x_intr_syncpt_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_syncpt = type { i32, %struct.TYPE_2__, %struct.host1x* }
%struct.TYPE_2__ = type { i32 }
%struct.host1x = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_syncpt*)* @host1x_intr_syncpt_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_intr_syncpt_handle(%struct.host1x_syncpt* %0) #0 {
  %2 = alloca %struct.host1x_syncpt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.host1x*, align 8
  store %struct.host1x_syncpt* %0, %struct.host1x_syncpt** %2, align 8
  %5 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %6 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %9 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %8, i32 0, i32 2
  %10 = load %struct.host1x*, %struct.host1x** %9, align 8
  store %struct.host1x* %10, %struct.host1x** %4, align 8
  %11 = load %struct.host1x*, %struct.host1x** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = urem i32 %12, 32
  %14 = call i32 @BIT(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = udiv i32 %15, 32
  %17 = call i32 @HOST1X_SYNC_SYNCPT_THRESH_INT_DISABLE(i32 %16)
  %18 = call i32 @host1x_sync_writel(%struct.host1x* %11, i32 %14, i32 %17)
  %19 = load %struct.host1x*, %struct.host1x** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = urem i32 %20, 32
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = udiv i32 %23, 32
  %25 = call i32 @HOST1X_SYNC_SYNCPT_THRESH_CPU0_INT_STATUS(i32 %24)
  %26 = call i32 @host1x_sync_writel(%struct.host1x* %19, i32 %22, i32 %25)
  %27 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %28 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @schedule_work(i32* %29)
  ret void
}

declare dso_local i32 @host1x_sync_writel(%struct.host1x*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @HOST1X_SYNC_SYNCPT_THRESH_INT_DISABLE(i32) #1

declare dso_local i32 @HOST1X_SYNC_SYNCPT_THRESH_CPU0_INT_STATUS(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
