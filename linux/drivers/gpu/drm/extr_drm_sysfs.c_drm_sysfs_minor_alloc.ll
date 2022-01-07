; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_minor_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_minor_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32, i32*, i32, i32 }
%struct.drm_minor = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DRM_MINOR_RENDER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"renderD%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"card%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MAJOR = common dso_local global i32 0, align 4
@drm_class = common dso_local global i32 0, align 4
@drm_sysfs_device_minor = common dso_local global i32 0, align 4
@drm_sysfs_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @drm_sysfs_minor_alloc(%struct.drm_minor* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.drm_minor*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_minor* %0, %struct.drm_minor** %3, align 8
  %7 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %8 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DRM_MINOR_RENDER, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %14

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.device* @kzalloc(i32 24, i32 %15)
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.device* @ERR_PTR(i32 %21)
  store %struct.device* %22, %struct.device** %2, align 8
  br label %67

23:                                               ; preds = %14
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @device_initialize(%struct.device* %24)
  %26 = load i32, i32* @DRM_MAJOR, align 4
  %27 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %28 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @MKDEV(i32 %26, i32 %29)
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @drm_class, align 4
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 2
  store i32* @drm_sysfs_device_minor, i32** %37, align 8
  %38 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %39 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @drm_sysfs_release, align 4
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %50 = call i32 @dev_set_drvdata(%struct.device* %48, %struct.drm_minor* %49)
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %54 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_set_name(%struct.device* %51, i8* %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %23
  br label %62

60:                                               ; preds = %23
  %61 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %61, %struct.device** %2, align 8
  br label %67

62:                                               ; preds = %59
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i32 @put_device(%struct.device* %63)
  %65 = load i32, i32* %6, align 4
  %66 = call %struct.device* @ERR_PTR(i32 %65)
  store %struct.device* %66, %struct.device** %2, align 8
  br label %67

67:                                               ; preds = %62, %60, %19
  %68 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %68
}

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.drm_minor*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
