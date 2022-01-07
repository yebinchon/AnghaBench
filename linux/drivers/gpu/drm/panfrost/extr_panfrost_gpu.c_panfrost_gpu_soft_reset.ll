; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32, i64 }

@GPU_INT_MASK = common dso_local global i32 0, align 4
@GPU_INT_CLEAR = common dso_local global i32 0, align 4
@GPU_IRQ_RESET_COMPLETED = common dso_local global i32 0, align 4
@GPU_CMD = common dso_local global i32 0, align 4
@GPU_CMD_SOFT_RESET = common dso_local global i32 0, align 4
@GPU_INT_RAWSTAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"gpu soft reset timed out\0A\00", align 1
@GPU_IRQ_MASK_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_gpu_soft_reset(%struct.panfrost_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  %6 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %7 = load i32, i32* @GPU_INT_MASK, align 4
  %8 = call i32 @gpu_write(%struct.panfrost_device* %6, i32 %7, i32 0)
  %9 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %10 = load i32, i32* @GPU_INT_CLEAR, align 4
  %11 = load i32, i32* @GPU_IRQ_RESET_COMPLETED, align 4
  %12 = call i32 @gpu_write(%struct.panfrost_device* %9, i32 %10, i32 %11)
  %13 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %14 = load i32, i32* @GPU_CMD, align 4
  %15 = load i32, i32* @GPU_CMD_SOFT_RESET, align 4
  %16 = call i32 @gpu_write(%struct.panfrost_device* %13, i32 %14, i32 %15)
  %17 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %18 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GPU_INT_RAWSTAT, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GPU_IRQ_RESET_COMPLETED, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @readl_relaxed_poll_timeout(i64 %21, i32 %22, i32 %25, i32 100, i32 10000)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %31 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %1
  %36 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %37 = load i32, i32* @GPU_INT_CLEAR, align 4
  %38 = load i32, i32* @GPU_IRQ_MASK_ALL, align 4
  %39 = call i32 @gpu_write(%struct.panfrost_device* %36, i32 %37, i32 %38)
  %40 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %41 = load i32, i32* @GPU_INT_MASK, align 4
  %42 = load i32, i32* @GPU_IRQ_MASK_ALL, align 4
  %43 = call i32 @gpu_write(%struct.panfrost_device* %40, i32 %41, i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @gpu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
