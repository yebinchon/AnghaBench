; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.drm_master* }
%struct.drm_master = type { i32 }
%struct.drm_lock = type { i64 }

@DRIVER_LEGACY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRM_KERNEL_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Process %d using kernel context %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_legacy_unlock(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lock*, align 8
  %9 = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_lock*
  store %struct.drm_lock* %11, %struct.drm_lock** %8, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load %struct.drm_master*, %struct.drm_master** %13, align 8
  store %struct.drm_master* %14, %struct.drm_master** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load i32, i32* @DRIVER_LEGACY, align 4
  %17 = call i32 @drm_core_check_feature(%struct.drm_device* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %24 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DRM_KERNEL_CONTEXT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32, i32* @current, align 4
  %30 = call i32 @task_pid_nr(i32 %29)
  %31 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %32 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %47

37:                                               ; preds = %22
  %38 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %39 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %38, i32 0, i32 0
  %40 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %41 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @drm_legacy_lock_free(i32* %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %37
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %28, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i64 @drm_legacy_lock_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
