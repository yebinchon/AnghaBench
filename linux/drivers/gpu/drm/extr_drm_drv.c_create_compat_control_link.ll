; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_create_compat_control_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_create_compat_control_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_minor = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@DRM_MINOR_PRIMARY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controlD%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @create_compat_control_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_compat_control_link(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_minor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = load i32, i32* @DRIVER_MODESET, align 4
  %9 = call i32 @drm_core_check_feature(%struct.drm_device* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = load i32, i32* @DRM_MINOR_PRIMARY, align 4
  %15 = call %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device* %13, i32 %14)
  %16 = load %struct.drm_minor*, %struct.drm_minor** %15, align 8
  store %struct.drm_minor* %16, %struct.drm_minor** %4, align 8
  %17 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %18 = icmp ne %struct.drm_minor* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %48

20:                                               ; preds = %12
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %23 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 64
  %26 = call i8* @kasprintf(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %20
  %33 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %34 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %40 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @sysfs_create_link(i32 %38, %struct.TYPE_4__* %42, i8* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %32, %29, %19, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device*, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i64) #1

declare dso_local i32 @sysfs_create_link(i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
