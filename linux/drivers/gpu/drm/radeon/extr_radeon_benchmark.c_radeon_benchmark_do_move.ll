; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_benchmark.c_radeon_benchmark_do_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_benchmark.c_radeon_benchmark_do_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.dma_resv = type { i32 }
%struct.radeon_fence = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown copy method\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, i32, i32, i32, %struct.dma_resv*)* @radeon_benchmark_do_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_benchmark_do_move(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.dma_resv* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_resv*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.radeon_fence*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.dma_resv* %6, %struct.dma_resv** %15, align 8
  store %struct.radeon_fence* null, %struct.radeon_fence** %18, align 8
  %21 = load i64, i64* @jiffies, align 8
  store i64 %21, i64* %16, align 8
  store i32 0, i32* %19, align 4
  br label %22

22:                                               ; preds = %66, %7
  %23 = load i32, i32* %19, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %46 [
    i32 128, label %28
    i32 129, label %37
  ]

28:                                               ; preds = %26
  %29 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %34 = udiv i32 %32, %33
  %35 = load %struct.dma_resv*, %struct.dma_resv** %15, align 8
  %36 = call %struct.radeon_fence* @radeon_copy_dma(%struct.radeon_device* %29, i32 %30, i32 %31, i32 %34, %struct.dma_resv* %35)
  store %struct.radeon_fence* %36, %struct.radeon_fence** %18, align 8
  br label %50

37:                                               ; preds = %26
  %38 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %43 = udiv i32 %41, %42
  %44 = load %struct.dma_resv*, %struct.dma_resv** %15, align 8
  %45 = call %struct.radeon_fence* @radeon_copy_blit(%struct.radeon_device* %38, i32 %39, i32 %40, i32 %43, %struct.dma_resv* %44)
  store %struct.radeon_fence* %45, %struct.radeon_fence** %18, align 8
  br label %50

46:                                               ; preds = %26
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %75

50:                                               ; preds = %37, %28
  %51 = load %struct.radeon_fence*, %struct.radeon_fence** %18, align 8
  %52 = call i64 @IS_ERR(%struct.radeon_fence* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.radeon_fence*, %struct.radeon_fence** %18, align 8
  %56 = call i32 @PTR_ERR(%struct.radeon_fence* %55)
  store i32 %56, i32* %8, align 4
  br label %75

57:                                               ; preds = %50
  %58 = load %struct.radeon_fence*, %struct.radeon_fence** %18, align 8
  %59 = call i32 @radeon_fence_wait(%struct.radeon_fence* %58, i32 0)
  store i32 %59, i32* %20, align 4
  %60 = call i32 @radeon_fence_unref(%struct.radeon_fence** %18)
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %8, align 4
  br label %75

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %19, align 4
  br label %22

69:                                               ; preds = %22
  %70 = load i64, i64* @jiffies, align 8
  store i64 %70, i64* %17, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %16, align 8
  %73 = sub i64 %71, %72
  %74 = call i32 @jiffies_to_msecs(i64 %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %69, %63, %54, %46
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local %struct.radeon_fence* @radeon_copy_dma(%struct.radeon_device*, i32, i32, i32, %struct.dma_resv*) #1

declare dso_local %struct.radeon_fence* @radeon_copy_blit(%struct.radeon_device*, i32, i32, i32, %struct.dma_resv*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @IS_ERR(%struct.radeon_fence*) #1

declare dso_local i32 @PTR_ERR(%struct.radeon_fence*) #1

declare dso_local i32 @radeon_fence_wait(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
