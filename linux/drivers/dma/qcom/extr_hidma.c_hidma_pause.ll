; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.hidma_chan = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hidma_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"channel did not stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @hidma_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidma_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.hidma_chan*, align 8
  %4 = alloca %struct.hidma_dev*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.hidma_chan* @to_hidma_chan(%struct.dma_chan* %5)
  store %struct.hidma_chan* %6, %struct.hidma_chan** %3, align 8
  %7 = load %struct.hidma_chan*, %struct.hidma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hidma_dev* @to_hidma_dev(i32 %10)
  store %struct.hidma_dev* %11, %struct.hidma_dev** %4, align 8
  %12 = load %struct.hidma_chan*, %struct.hidma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %1
  %17 = load %struct.hidma_dev*, %struct.hidma_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get_sync(i32 %20)
  %22 = load %struct.hidma_dev*, %struct.hidma_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @hidma_ll_disable(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load %struct.hidma_dev*, %struct.hidma_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_warn(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %27, %16
  %34 = load %struct.hidma_chan*, %struct.hidma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.hidma_dev*, %struct.hidma_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pm_runtime_mark_last_busy(i32 %39)
  %41 = load %struct.hidma_dev*, %struct.hidma_dev** %4, align 8
  %42 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pm_runtime_put_autosuspend(i32 %44)
  br label %46

46:                                               ; preds = %33, %1
  ret i32 0
}

declare dso_local %struct.hidma_chan* @to_hidma_chan(%struct.dma_chan*) #1

declare dso_local %struct.hidma_dev* @to_hidma_dev(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @hidma_ll_disable(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
