; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_timeline_wait_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_timeline_wait_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_syncobj_timeline_wait = type { i32, i64, i32 }
%struct.drm_syncobj = type { i32 }

@DRIVER_SYNCOBJ_TIMELINE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRM_SYNCOBJ_WAIT_FLAGS_WAIT_ALL = common dso_local global i32 0, align 4
@DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT = common dso_local global i32 0, align 4
@DRM_SYNCOBJ_WAIT_FLAGS_WAIT_AVAILABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_syncobj_timeline_wait_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_syncobj_timeline_wait*, align 8
  %9 = alloca %struct.drm_syncobj**, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_syncobj_timeline_wait*
  store %struct.drm_syncobj_timeline_wait* %12, %struct.drm_syncobj_timeline_wait** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @DRIVER_SYNCOBJ_TIMELINE, align 4
  %15 = call i32 @drm_core_check_feature(%struct.drm_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %8, align 8
  %22 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DRM_SYNCOBJ_WAIT_FLAGS_WAIT_ALL, align 4
  %25 = load i32, i32* @DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DRM_SYNCOBJ_WAIT_FLAGS_WAIT_AVAILABLE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %23, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %69

35:                                               ; preds = %20
  %36 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %8, align 8
  %37 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %69

43:                                               ; preds = %35
  %44 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %45 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %8, align 8
  %46 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @u64_to_user_ptr(i32 %47)
  %49 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %8, align 8
  %50 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @drm_syncobj_array_find(%struct.drm_file* %44, i32 %48, i64 %51, %struct.drm_syncobj*** %9)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %69

57:                                               ; preds = %43
  %58 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %59 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %60 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %8, align 8
  %61 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %9, align 8
  %62 = call i32 @drm_syncobj_array_wait(%struct.drm_device* %58, %struct.drm_file* %59, i32* null, %struct.drm_syncobj_timeline_wait* %60, %struct.drm_syncobj** %61, i32 1)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %9, align 8
  %64 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %8, align 8
  %65 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @drm_syncobj_array_free(%struct.drm_syncobj** %63, i64 %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %57, %55, %40, %32, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_syncobj_array_find(%struct.drm_file*, i32, i64, %struct.drm_syncobj***) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @drm_syncobj_array_wait(%struct.drm_device*, %struct.drm_file*, i32*, %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj**, i32) #1

declare dso_local i32 @drm_syncobj_array_free(%struct.drm_syncobj**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
