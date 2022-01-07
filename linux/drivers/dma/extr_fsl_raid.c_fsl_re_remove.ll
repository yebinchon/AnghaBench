; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fsl_re_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fsl_re_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.fsl_re_drv_private = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_re_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_re_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_re_drv_private*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.fsl_re_drv_private* @dev_get_drvdata(%struct.device* %8)
  store %struct.fsl_re_drv_private* %9, %struct.fsl_re_drv_private** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_re_drv_private, %struct.fsl_re_drv_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_re_drv_private, %struct.fsl_re_drv_private* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fsl_re_remove_chan(i32 %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_re_drv_private, %struct.fsl_re_drv_private* %29, i32 0, i32 1
  %31 = call i32 @dma_async_device_unregister(i32* %30)
  ret i32 0
}

declare dso_local %struct.fsl_re_drv_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @fsl_re_remove_chan(i32) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
