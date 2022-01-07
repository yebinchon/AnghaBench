; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c_drm_mode_revoke_lease_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c_drm_mode_revoke_lease_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { %struct.drm_master* }
%struct.drm_master = type { %struct.drm_master* }
%struct.drm_mode_revoke_lease = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"revoke lease for %d\0A\00", align 1
@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_revoke_lease_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_revoke_lease*, align 8
  %9 = alloca %struct.drm_master*, align 8
  %10 = alloca %struct.drm_master*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_mode_revoke_lease*
  store %struct.drm_mode_revoke_lease* %13, %struct.drm_mode_revoke_lease** %8, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %15 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %14, i32 0, i32 0
  %16 = load %struct.drm_master*, %struct.drm_master** %15, align 8
  store %struct.drm_master* %16, %struct.drm_master** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.drm_mode_revoke_lease*, %struct.drm_mode_revoke_lease** %8, align 8
  %18 = getelementptr inbounds %struct.drm_mode_revoke_lease, %struct.drm_mode_revoke_lease* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load i32, i32* @DRIVER_MODESET, align 4
  %23 = call i32 @drm_core_check_feature(%struct.drm_device* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %3
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %34 = load %struct.drm_mode_revoke_lease*, %struct.drm_mode_revoke_lease** %8, align 8
  %35 = getelementptr inbounds %struct.drm_mode_revoke_lease, %struct.drm_mode_revoke_lease* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.drm_master* @_drm_find_lessee(%struct.drm_master* %33, i32 %36)
  store %struct.drm_master* %37, %struct.drm_master** %10, align 8
  %38 = load %struct.drm_master*, %struct.drm_master** %10, align 8
  %39 = icmp ne %struct.drm_master* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %55

43:                                               ; preds = %28
  %44 = load %struct.drm_master*, %struct.drm_master** %10, align 8
  %45 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %44, i32 0, i32 0
  %46 = load %struct.drm_master*, %struct.drm_master** %45, align 8
  %47 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %48 = icmp ne %struct.drm_master* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EACCES, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %55

52:                                               ; preds = %43
  %53 = load %struct.drm_master*, %struct.drm_master** %10, align 8
  %54 = call i32 @_drm_lease_revoke(%struct.drm_master* %53)
  br label %55

55:                                               ; preds = %52, %49, %40
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %25
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @DRM_DEBUG_LEASE(i8*, i32) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drm_master* @_drm_find_lessee(%struct.drm_master*, i32) #1

declare dso_local i32 @_drm_lease_revoke(%struct.drm_master*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
