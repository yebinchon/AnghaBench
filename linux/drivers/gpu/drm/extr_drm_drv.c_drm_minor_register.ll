; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_minor_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_minor_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_minor = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@drm_debugfs_root = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"DRM: Failed to initialize /sys/kernel/debug/dri.\0A\00", align 1
@drm_minor_lock = common dso_local global i32 0, align 4
@drm_minors_idr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"new minor registered %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @drm_minor_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_minor_register(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_minor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device* %10, i32 %11)
  %13 = load %struct.drm_minor*, %struct.drm_minor** %12, align 8
  store %struct.drm_minor* %13, %struct.drm_minor** %6, align 8
  %14 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %15 = icmp ne %struct.drm_minor* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %19 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %20 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @drm_debugfs_root, align 4
  %23 = call i32 @drm_debugfs_init(%struct.drm_minor* %18, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %50

28:                                               ; preds = %17
  %29 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %30 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_add(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %50

36:                                               ; preds = %28
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_lock_irqsave(i32* @drm_minor_lock, i64 %37)
  %39 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %40 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %41 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @idr_replace(i32* @drm_minors_idr, %struct.drm_minor* %39, i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* @drm_minor_lock, i64 %44)
  %46 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %47 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i32 0, i32* %3, align 4
  br label %54

50:                                               ; preds = %35, %26
  %51 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %52 = call i32 @drm_debugfs_cleanup(%struct.drm_minor* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %36, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_debugfs_init(%struct.drm_minor*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @device_add(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_replace(i32*, %struct.drm_minor*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_debugfs_cleanup(%struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
