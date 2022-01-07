; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hidma_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"HI-DMA engine shutdown\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"channel did not stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @hidma_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidma_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hidma_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.hidma_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.hidma_dev* %5, %struct.hidma_dev** %3, align 8
  %6 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  %16 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @hidma_ll_disable(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pm_runtime_mark_last_busy(i32 %31)
  %33 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_runtime_put_autosuspend(i32 %36)
  ret void
}

declare dso_local %struct.hidma_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

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
