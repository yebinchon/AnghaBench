; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_free_handles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_free_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, %struct.drm_file** }
%struct.drm_file = type { i32 }
%struct.radeon_fence = type { i32 }

@R600_RING_TYPE_UVD_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error destroying UVD (%d)!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_uvd_free_handles(%struct.radeon_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %70, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %9
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i64 @atomic_read(i32* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %16
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load %struct.drm_file**, %struct.drm_file*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.drm_file*, %struct.drm_file** %31, i64 %33
  %35 = load %struct.drm_file*, %struct.drm_file** %34, align 8
  %36 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %37 = icmp eq %struct.drm_file* %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %27
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = call i32 @radeon_uvd_note_usage(%struct.radeon_device* %39)
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = load i32, i32* @R600_RING_TYPE_UVD_INDEX, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @radeon_uvd_get_destroy_msg(%struct.radeon_device* %41, i32 %42, i64 %43, %struct.radeon_fence** %8)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %70

50:                                               ; preds = %38
  %51 = load %struct.radeon_fence*, %struct.radeon_fence** %8, align 8
  %52 = call i32 @radeon_fence_wait(%struct.radeon_fence* %51, i32 0)
  %53 = call i32 @radeon_fence_unref(%struct.radeon_fence** %8)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load %struct.drm_file**, %struct.drm_file*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.drm_file*, %struct.drm_file** %57, i64 %59
  store %struct.drm_file* null, %struct.drm_file** %60, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @atomic_set(i32* %67, i32 0)
  br label %69

69:                                               ; preds = %50, %27, %16
  br label %70

70:                                               ; preds = %69, %47
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %9

73:                                               ; preds = %9
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @radeon_uvd_note_usage(%struct.radeon_device*) #1

declare dso_local i32 @radeon_uvd_get_destroy_msg(%struct.radeon_device*, i32, i64, %struct.radeon_fence**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_fence_wait(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
