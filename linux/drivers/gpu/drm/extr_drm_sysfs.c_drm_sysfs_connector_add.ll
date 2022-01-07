; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_connector_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_connector_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_9__*, %struct.TYPE_10__*, i32, %struct.drm_device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@drm_class = common dso_local global i32 0, align 4
@connector_dev_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"card%d-%s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"adding \22%s\22 to sysfs\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to register connector device: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sysfs_connector_add(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %6 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %5, i32 0, i32 3
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %4, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

13:                                               ; preds = %1
  %14 = load i32, i32* @drm_class, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %21 = load i32, i32* @connector_dev_groups, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_10__* @device_create_with_groups(i32 %14, i32 %19, i32 0, %struct.drm_connector* %20, i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 1
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %32, align 8
  %33 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call i64 @IS_ERR(%struct.TYPE_10__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %13
  %43 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = call i32 @PTR_ERR(%struct.TYPE_10__* %45)
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %49 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = call i32 @PTR_ERR(%struct.TYPE_10__* %50)
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %13
  %53 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %54 = call i32 @drm_sysfs_hotplug_event(%struct.drm_device* %53)
  %55 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %65 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = call i32 @sysfs_create_link(i32* %63, i32* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %59, %42, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_10__* @device_create_with_groups(i32, i32, i32, %struct.drm_connector*, i32, i8*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @drm_sysfs_hotplug_event(%struct.drm_device*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
