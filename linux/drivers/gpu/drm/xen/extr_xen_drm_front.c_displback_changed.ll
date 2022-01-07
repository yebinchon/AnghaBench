; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_displback_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_displback_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.xen_drm_front_info = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Backend state is %s, front is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"initializing frontend\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"connecting backend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @displback_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @displback_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xen_drm_front_info*, align 8
  %6 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 1
  %9 = call %struct.xen_drm_front_info* @dev_get_drvdata(i32* %8)
  store %struct.xen_drm_front_info* %9, %struct.xen_drm_front_info** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @xenbus_strstate(i32 %10)
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %13 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xenbus_strstate(i32 %14)
  %16 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %86 [
    i32 129, label %18
    i32 130, label %18
    i32 132, label %18
    i32 131, label %19
    i32 133, label %28
    i32 134, label %55
    i32 135, label %76
    i32 128, label %77
    i32 136, label %77
  ]

18:                                               ; preds = %2, %2, %2
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %21 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %86

25:                                               ; preds = %19
  %26 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %27 = call i32 @displback_disconnect(%struct.xen_drm_front_info* %26)
  br label %86

28:                                               ; preds = %2
  %29 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %30 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 129
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %86

34:                                               ; preds = %28
  %35 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %36 = call i32 @displback_disconnect(%struct.xen_drm_front_info* %35)
  %37 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %38 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 131
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %86

42:                                               ; preds = %34
  %43 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %44 = call i32 @displback_initwait(%struct.xen_drm_front_info* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %48, i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %54

51:                                               ; preds = %42
  %52 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %53 = call i32 @xenbus_switch_state(%struct.xenbus_device* %52, i32 132)
  br label %54

54:                                               ; preds = %51, %47
  br label %86

55:                                               ; preds = %2
  %56 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %57 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 132
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %86

61:                                               ; preds = %55
  %62 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %63 = call i32 @displback_connect(%struct.xen_drm_front_info* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %68 = call i32 @displback_disconnect(%struct.xen_drm_front_info* %67)
  %69 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %69, i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %75

72:                                               ; preds = %61
  %73 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %74 = call i32 @xenbus_switch_state(%struct.xenbus_device* %73, i32 134)
  br label %75

75:                                               ; preds = %72, %66
  br label %86

76:                                               ; preds = %2
  br label %86

77:                                               ; preds = %2, %2
  %78 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %79 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 136
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %86

83:                                               ; preds = %77
  %84 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %85 = call i32 @displback_disconnect(%struct.xen_drm_front_info* %84)
  br label %86

86:                                               ; preds = %2, %83, %82, %76, %75, %60, %54, %41, %33, %25, %24, %18
  ret void
}

declare dso_local %struct.xen_drm_front_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @xenbus_strstate(i32) #1

declare dso_local i32 @displback_disconnect(%struct.xen_drm_front_info*) #1

declare dso_local i32 @displback_initwait(%struct.xen_drm_front_info*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @displback_connect(%struct.xen_drm_front_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
