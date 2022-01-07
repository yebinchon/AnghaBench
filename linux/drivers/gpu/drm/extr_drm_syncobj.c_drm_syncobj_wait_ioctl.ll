; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_wait_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_wait_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_syncobj_wait = type { i32, i64, i32 }
%struct.drm_syncobj = type { i32 }

@DRIVER_SYNCOBJ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRM_SYNCOBJ_WAIT_FLAGS_WAIT_ALL = common dso_local global i32 0, align 4
@DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_syncobj_wait_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_syncobj_wait*, align 8
  %9 = alloca %struct.drm_syncobj**, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_syncobj_wait*
  store %struct.drm_syncobj_wait* %12, %struct.drm_syncobj_wait** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @DRIVER_SYNCOBJ, align 4
  %15 = call i32 @drm_core_check_feature(%struct.drm_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %67

20:                                               ; preds = %3
  %21 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %8, align 8
  %22 = getelementptr inbounds %struct.drm_syncobj_wait, %struct.drm_syncobj_wait* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DRM_SYNCOBJ_WAIT_FLAGS_WAIT_ALL, align 4
  %25 = load i32, i32* @DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %67

33:                                               ; preds = %20
  %34 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %8, align 8
  %35 = getelementptr inbounds %struct.drm_syncobj_wait, %struct.drm_syncobj_wait* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %33
  %42 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %43 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %8, align 8
  %44 = getelementptr inbounds %struct.drm_syncobj_wait, %struct.drm_syncobj_wait* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @u64_to_user_ptr(i32 %45)
  %47 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %8, align 8
  %48 = getelementptr inbounds %struct.drm_syncobj_wait, %struct.drm_syncobj_wait* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @drm_syncobj_array_find(%struct.drm_file* %42, i32 %46, i64 %49, %struct.drm_syncobj*** %9)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %67

55:                                               ; preds = %41
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %58 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %8, align 8
  %59 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %9, align 8
  %60 = call i32 @drm_syncobj_array_wait(%struct.drm_device* %56, %struct.drm_file* %57, %struct.drm_syncobj_wait* %58, i32* null, %struct.drm_syncobj** %59, i32 0)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %9, align 8
  %62 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %8, align 8
  %63 = getelementptr inbounds %struct.drm_syncobj_wait, %struct.drm_syncobj_wait* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @drm_syncobj_array_free(%struct.drm_syncobj** %61, i64 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %55, %53, %38, %30, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_syncobj_array_find(%struct.drm_file*, i32, i64, %struct.drm_syncobj***) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @drm_syncobj_array_wait(%struct.drm_device*, %struct.drm_file*, %struct.drm_syncobj_wait*, i32*, %struct.drm_syncobj**, i32) #1

declare dso_local i32 @drm_syncobj_array_free(%struct.drm_syncobj**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
