; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@panfrost_gpu_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request gpu irq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_gpu_init(%struct.panfrost_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  %6 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %7 = call i32 @panfrost_gpu_soft_reset(%struct.panfrost_device* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %14 = call i32 @panfrost_gpu_init_features(%struct.panfrost_device* %13)
  %15 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %16 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %19 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @FIELD_GET(i32 65280, i32 %21)
  %23 = call i32 @DMA_BIT_MASK(i32 %22)
  %24 = call i32 @dma_set_mask_and_coherent(i32 %17, i32 %23)
  %25 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %26 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @to_platform_device(i32 %27)
  %29 = call i32 @platform_get_irq_byname(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %12
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %57

35:                                               ; preds = %12
  %36 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %37 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @panfrost_gpu_irq_handler, align 4
  %41 = load i32, i32* @IRQF_SHARED, align 4
  %42 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %43 = call i32 @devm_request_irq(i32 %38, i32 %39, i32 %40, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.panfrost_device* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %48 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %57

52:                                               ; preds = %35
  %53 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %54 = call i32 @panfrost_gpu_init_quirks(%struct.panfrost_device* %53)
  %55 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %56 = call i32 @panfrost_gpu_power_on(%struct.panfrost_device* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %46, %32, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @panfrost_gpu_soft_reset(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_gpu_init_features(%struct.panfrost_device*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @platform_get_irq_byname(i32, i8*) #1

declare dso_local i32 @to_platform_device(i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.panfrost_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @panfrost_gpu_init_quirks(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_gpu_power_on(%struct.panfrost_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
