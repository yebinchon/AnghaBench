; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_mode_create_hotplug_mode_update_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_mode_create_hotplug_mode_update_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32, i64 }

@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hotplug_mode_update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*)* @qxl_mode_create_hotplug_mode_update_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_mode_create_hotplug_mode_update_property(%struct.qxl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qxl_device*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  %4 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %5 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %11 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %10, i32 0, i32 0
  %12 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %13 = call i64 @drm_property_create_range(i32* %11, i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0, i32 1)
  %14 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %15 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %9, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @drm_property_create_range(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
