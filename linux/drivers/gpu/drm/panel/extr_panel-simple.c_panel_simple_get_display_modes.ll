; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_get_display_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_get_display_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_simple = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.drm_device*, %struct.drm_connector* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to add mode %ux%u@%u\0A\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_simple*)* @panel_simple_get_display_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_simple_get_display_modes(%struct.panel_simple* %0) #0 {
  %2 = alloca %struct.panel_simple*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.panel_simple* %0, %struct.panel_simple** %2, align 8
  %9 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %10 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  store %struct.drm_connector* %12, %struct.drm_connector** %3, align 8
  %13 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %14 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %79, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %20 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %18, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %17
  %26 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %27 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i64 %32
  store %struct.drm_display_mode* %33, %struct.drm_display_mode** %8, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %36 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %34, %struct.drm_display_mode* %35)
  store %struct.drm_display_mode* %36, %struct.drm_display_mode** %5, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %38 = icmp ne %struct.drm_display_mode* %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %25
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %51)
  br label %79

53:                                               ; preds = %25
  %54 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %60 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %53
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %73 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %72)
  %74 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %76 = call i32 @drm_mode_probed_add(%struct.drm_connector* %74, %struct.drm_display_mode* %75)
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %71, %39
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %17

82:                                               ; preds = %17
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
