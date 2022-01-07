; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_remove_compat_control_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_remove_compat_control_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_minor = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@DRM_MINOR_PRIMARY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controlD%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @remove_compat_control_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_compat_control_link(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_minor*, align 8
  %4 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = load i32, i32* @DRIVER_MODESET, align 4
  %7 = call i32 @drm_core_check_feature(%struct.drm_device* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = load i32, i32* @DRM_MINOR_PRIMARY, align 4
  %13 = call %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device* %11, i32 %12)
  %14 = load %struct.drm_minor*, %struct.drm_minor** %13, align 8
  store %struct.drm_minor* %14, %struct.drm_minor** %3, align 8
  %15 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %16 = icmp ne %struct.drm_minor* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %39

18:                                               ; preds = %10
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %21 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 64
  %24 = call i8* @kasprintf(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %30 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @sysfs_remove_link(i32 %34, i8* %35)
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @kfree(i8* %37)
  br label %39

39:                                               ; preds = %28, %27, %17, %9
  ret void
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device*, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i64) #1

declare dso_local i32 @sysfs_remove_link(i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
