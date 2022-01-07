; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_syncpt_hw.c_syncpt_cpu_incr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_syncpt_hw.c_syncpt_cpu_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_syncpt = type { i32, %struct.host1x* }
%struct.host1x = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_syncpt*)* @syncpt_cpu_incr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syncpt_cpu_incr(%struct.host1x_syncpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_syncpt*, align 8
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca i32, align 4
  store %struct.host1x_syncpt* %0, %struct.host1x_syncpt** %3, align 8
  %6 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %7 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %6, i32 0, i32 1
  %8 = load %struct.host1x*, %struct.host1x** %7, align 8
  store %struct.host1x* %8, %struct.host1x** %4, align 8
  %9 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %10 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %11, 32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %14 = call i32 @host1x_syncpt_client_managed(%struct.host1x_syncpt* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %18 = call i64 @host1x_syncpt_idle(%struct.host1x_syncpt* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %16, %1
  %24 = load %struct.host1x*, %struct.host1x** %4, align 8
  %25 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %26 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = srem i32 %27, 32
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @HOST1X_SYNC_SYNCPT_CPU_INCR(i32 %30)
  %32 = call i32 @host1x_sync_writel(%struct.host1x* %24, i32 %29, i32 %31)
  %33 = call i32 (...) @wmb()
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %23, %20
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @host1x_syncpt_client_managed(%struct.host1x_syncpt*) #1

declare dso_local i64 @host1x_syncpt_idle(%struct.host1x_syncpt*) #1

declare dso_local i32 @host1x_sync_writel(%struct.host1x*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @HOST1X_SYNC_SYNCPT_CPU_INCR(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
