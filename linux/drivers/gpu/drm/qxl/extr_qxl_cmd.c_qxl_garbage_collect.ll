; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_garbage_collect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_garbage_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_release = type { i32 }
%union.qxl_release_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"popped %lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"popped %lld, next %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unexpected release type\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_garbage_collect(%struct.qxl_device* %0) #0 {
  %2 = alloca %struct.qxl_device*, align 8
  %3 = alloca %struct.qxl_release*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.qxl_release_info*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %2, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %54, %1
  %9 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %10 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @qxl_ring_pop(i32 %11, i32* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %47, %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.qxl_release* @qxl_release_from_id_locked(%struct.qxl_device* %21, i32 %22)
  store %struct.qxl_release* %23, %struct.qxl_release** %3, align 8
  %24 = load %struct.qxl_release*, %struct.qxl_release** %3, align 8
  %25 = icmp eq %struct.qxl_release* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %54

27:                                               ; preds = %20
  %28 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %29 = load %struct.qxl_release*, %struct.qxl_release** %3, align 8
  %30 = call %union.qxl_release_info* @qxl_release_map(%struct.qxl_device* %28, %struct.qxl_release* %29)
  store %union.qxl_release_info* %30, %union.qxl_release_info** %7, align 8
  %31 = load %union.qxl_release_info*, %union.qxl_release_info** %7, align 8
  %32 = bitcast %union.qxl_release_info* %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %35 = load %struct.qxl_release*, %struct.qxl_release** %3, align 8
  %36 = load %union.qxl_release_info*, %union.qxl_release_info** %7, align 8
  %37 = call i32 @qxl_release_unmap(%struct.qxl_device* %34, %struct.qxl_release* %35, %union.qxl_release_info* %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.qxl_release*, %struct.qxl_release** %3, align 8
  %42 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %45 [
    i32 129, label %44
    i32 128, label %44
    i32 130, label %44
  ]

44:                                               ; preds = %27, %27, %27
  br label %47

45:                                               ; preds = %27
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %50 = load %struct.qxl_release*, %struct.qxl_release** %3, align 8
  %51 = call i32 @qxl_release_free(%struct.qxl_device* %49, %struct.qxl_release* %50)
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %17

54:                                               ; preds = %26, %17
  br label %8

55:                                               ; preds = %8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @qxl_ring_pop(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

declare dso_local %struct.qxl_release* @qxl_release_from_id_locked(%struct.qxl_device*, i32) #1

declare dso_local %union.qxl_release_info* @qxl_release_map(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local i32 @qxl_release_unmap(%struct.qxl_device*, %struct.qxl_release*, %union.qxl_release_info*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @qxl_release_free(%struct.qxl_device*, %struct.qxl_release*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
