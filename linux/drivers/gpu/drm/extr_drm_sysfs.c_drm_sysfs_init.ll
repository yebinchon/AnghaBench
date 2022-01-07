; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@drm_class = common dso_local global %struct.TYPE_9__* null, align 8
@class_attr_version = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@drm_devnode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sysfs_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @THIS_MODULE, align 4
  %4 = call %struct.TYPE_9__* @class_create(i32 %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** @drm_class, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @drm_class, align 8
  %6 = call i64 @IS_ERR(%struct.TYPE_9__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @drm_class, align 8
  %10 = call i32 @PTR_ERR(%struct.TYPE_9__* %9)
  store i32 %10, i32* %1, align 4
  br label %26

11:                                               ; preds = %0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @drm_class, align 8
  %13 = call i32 @class_create_file(%struct.TYPE_9__* %12, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @class_attr_version, i32 0, i32 0))
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @drm_class, align 8
  %18 = call i32 @class_destroy(%struct.TYPE_9__* %17)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @drm_class, align 8
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %26

20:                                               ; preds = %11
  %21 = load i32, i32* @drm_devnode, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @drm_class, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @drm_class, align 8
  %25 = call i32 @drm_setup_hdcp_srm(%struct.TYPE_9__* %24)
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %20, %16, %8
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local %struct.TYPE_9__* @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @class_create_file(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @class_destroy(%struct.TYPE_9__*) #1

declare dso_local i32 @drm_setup_hdcp_srm(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
