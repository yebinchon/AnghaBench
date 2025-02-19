; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c__host1x_intr_disable_all_syncpt_intrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c__host1x_intr_disable_all_syncpt_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*)* @_host1x_intr_disable_all_syncpt_intrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_host1x_intr_disable_all_syncpt_intrs(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  %3 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.host1x*, %struct.host1x** %2, align 8
  %7 = getelementptr inbounds %struct.host1x, %struct.host1x* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DIV_ROUND_UP(i32 %10, i32 32)
  %12 = icmp ult i32 %5, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load %struct.host1x*, %struct.host1x** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @HOST1X_SYNC_SYNCPT_THRESH_INT_DISABLE(i32 %15)
  %17 = call i32 @host1x_sync_writel(%struct.host1x* %14, i32 -1, i32 %16)
  %18 = load %struct.host1x*, %struct.host1x** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @HOST1X_SYNC_SYNCPT_THRESH_CPU0_INT_STATUS(i32 %19)
  %21 = call i32 @host1x_sync_writel(%struct.host1x* %18, i32 -1, i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %4

25:                                               ; preds = %4
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @host1x_sync_writel(%struct.host1x*, i32, i32) #1

declare dso_local i32 @HOST1X_SYNC_SYNCPT_THRESH_INT_DISABLE(i32) #1

declare dso_local i32 @HOST1X_SYNC_SYNCPT_THRESH_CPU0_INT_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
