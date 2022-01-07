; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_move_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_move_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ttm_mem_reg = type { i32, i32, i64 }
%struct.radeon_device = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.radeon_fence = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown placement %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Trying to move memory with ring turned off.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @radeon_move_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_move_blit(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttm_mem_reg*, align 8
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.radeon_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.radeon_fence*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %10, align 8
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.radeon_device* @radeon_get_rdev(i32 %21)
  store %struct.radeon_device* %22, %struct.radeon_device** %12, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %24 = call i32 @radeon_copy_ring_index(%struct.radeon_device* %23)
  store i32 %24, i32* %18, align 4
  %25 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = shl i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %32 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %54 [
    i32 128, label %40
    i32 129, label %47
  ]

40:                                               ; preds = %5
  %41 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %61

47:                                               ; preds = %5
  %48 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %13, align 4
  br label %61

54:                                               ; preds = %5
  %55 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %56 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %138

61:                                               ; preds = %47, %40
  %62 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %63 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %79 [
    i32 128, label %65
    i32 129, label %72
  ]

65:                                               ; preds = %61
  %66 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %86

72:                                               ; preds = %61
  %73 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %14, align 4
  br label %86

79:                                               ; preds = %61
  %80 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %81 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %138

86:                                               ; preds = %72, %65
  %87 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %86
  %97 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %138

100:                                              ; preds = %86
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %103 = urem i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @BUILD_BUG_ON(i32 %105)
  %107 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %108 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %112 = udiv i32 %110, %111
  %113 = mul i32 %109, %112
  store i32 %113, i32* %16, align 4
  %114 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %119 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.radeon_fence* @radeon_copy(%struct.radeon_device* %114, i32 %115, i32 %116, i32 %117, i32 %121)
  store %struct.radeon_fence* %122, %struct.radeon_fence** %15, align 8
  %123 = load %struct.radeon_fence*, %struct.radeon_fence** %15, align 8
  %124 = call i64 @IS_ERR(%struct.radeon_fence* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %100
  %127 = load %struct.radeon_fence*, %struct.radeon_fence** %15, align 8
  %128 = call i32 @PTR_ERR(%struct.radeon_fence* %127)
  store i32 %128, i32* %6, align 4
  br label %138

129:                                              ; preds = %100
  %130 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %131 = load %struct.radeon_fence*, %struct.radeon_fence** %15, align 8
  %132 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %131, i32 0, i32 0
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %135 = call i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object* %130, i32* %132, i32 %133, %struct.ttm_mem_reg* %134)
  store i32 %135, i32* %17, align 4
  %136 = call i32 @radeon_fence_unref(%struct.radeon_fence** %15)
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %129, %126, %96, %79, %54
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local %struct.radeon_device* @radeon_get_rdev(i32) #1

declare dso_local i32 @radeon_copy_ring_index(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.radeon_fence* @radeon_copy(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.radeon_fence*) #1

declare dso_local i32 @PTR_ERR(%struct.radeon_fence*) #1

declare dso_local i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object*, i32*, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
