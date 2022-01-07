; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_dma-crossbar.c_ti_dma_xbar_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_dma-crossbar.c_ti_dma_xbar_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.of_device_id = type { i64 }

@ti_dma_xbar_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported crossbar\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_dma_xbar_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dma_xbar_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @ti_dma_xbar_match, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.of_device_id* @of_match_node(i32 %6, i32 %10)
  store %struct.of_device_id* %11, %struct.of_device_id** %4, align 8
  %12 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %13 = icmp ne %struct.of_device_id* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %23 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %30
  ]

27:                                               ; preds = %21
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @ti_dra7_xbar_probe(%struct.platform_device* %28)
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %21
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i32 @ti_am335x_xbar_probe(%struct.platform_device* %31)
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %21
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_2__* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %30, %27
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ti_dra7_xbar_probe(%struct.platform_device*) #1

declare dso_local i32 @ti_am335x_xbar_probe(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
