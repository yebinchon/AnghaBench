; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32**, i32* }
%struct.radeon_fence = type { i32 }

@R600_RING_TYPE_UVD_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error destroying UVD (%d)!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_uvd_suspend(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %65, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %15
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i64 @atomic_read(i32* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %22
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i32 @radeon_uvd_note_usage(%struct.radeon_device* %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = load i32, i32* @R600_RING_TYPE_UVD_INDEX, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @radeon_uvd_get_destroy_msg(%struct.radeon_device* %36, i32 %37, i64 %38, %struct.radeon_fence** %7)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %65

45:                                               ; preds = %33
  %46 = load %struct.radeon_fence*, %struct.radeon_fence** %7, align 8
  %47 = call i32 @radeon_fence_wait(%struct.radeon_fence* %46, i32 0)
  %48 = call i32 @radeon_fence_unref(%struct.radeon_fence** %7)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* null, i32** %55, align 8
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  br label %64

64:                                               ; preds = %45, %22
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %15

68:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
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
