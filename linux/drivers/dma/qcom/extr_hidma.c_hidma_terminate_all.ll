; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.hidma_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hidma_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @hidma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.hidma_chan*, align 8
  %5 = alloca %struct.hidma_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.hidma_chan* @to_hidma_chan(%struct.dma_chan* %7)
  store %struct.hidma_chan* %8, %struct.hidma_chan** %4, align 8
  %9 = load %struct.hidma_chan*, %struct.hidma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hidma_dev* @to_hidma_dev(i32 %12)
  store %struct.hidma_dev* %13, %struct.hidma_dev** %5, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %15 = call i32 @hidma_terminate_channel(%struct.dma_chan* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.hidma_dev*, %struct.hidma_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_get_sync(i32 %24)
  %26 = load %struct.hidma_dev*, %struct.hidma_dev** %5, align 8
  %27 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hidma_ll_setup(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.hidma_dev*, %struct.hidma_dev** %5, align 8
  %31 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_runtime_mark_last_busy(i32 %33)
  %35 = load %struct.hidma_dev*, %struct.hidma_dev** %5, align 8
  %36 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pm_runtime_put_autosuspend(i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %20, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.hidma_chan* @to_hidma_chan(%struct.dma_chan*) #1

declare dso_local %struct.hidma_dev* @to_hidma_dev(i32) #1

declare dso_local i32 @hidma_terminate_channel(%struct.dma_chan*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @hidma_ll_setup(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
