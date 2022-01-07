; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.analogix_dp_device = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__*, %struct.drm_connector*)*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.edid = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to prepare panel (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to unprepare panel (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @analogix_dp_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.analogix_dp_device*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.analogix_dp_device* @to_dp(%struct.drm_connector* %8)
  store %struct.analogix_dp_device* %9, %struct.analogix_dp_device** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %11 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %18 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @drm_panel_get_modes(i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  br label %75

27:                                               ; preds = %1
  %28 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %29 = call i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device* %28, i32 1, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %99

35:                                               ; preds = %27
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %37 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pm_runtime_get_sync(i32 %38)
  %40 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %41 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %42 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %40, i32* %43)
  store %struct.edid* %44, %struct.edid** %5, align 8
  %45 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %46 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pm_runtime_put(i32 %47)
  %49 = load %struct.edid*, %struct.edid** %5, align 8
  %50 = icmp ne %struct.edid* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %35
  %52 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %53 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %52, i32 0, i32 1
  %54 = load %struct.edid*, %struct.edid** %5, align 8
  %55 = call i32 @drm_connector_update_edid_property(i32* %53, %struct.edid* %54)
  %56 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %57 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %56, i32 0, i32 1
  %58 = load %struct.edid*, %struct.edid** %5, align 8
  %59 = call i64 @drm_add_edid_modes(i32* %57, %struct.edid* %58)
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load %struct.edid*, %struct.edid** %5, align 8
  %65 = call i32 @kfree(%struct.edid* %64)
  br label %66

66:                                               ; preds = %51, %35
  %67 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %68 = call i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device* %67, i32 0, i32 0)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %16
  %76 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %77 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64 (%struct.TYPE_4__*, %struct.drm_connector*)*, i64 (%struct.TYPE_4__*, %struct.drm_connector*)** %79, align 8
  %81 = icmp ne i64 (%struct.TYPE_4__*, %struct.drm_connector*)* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %84 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64 (%struct.TYPE_4__*, %struct.drm_connector*)*, i64 (%struct.TYPE_4__*, %struct.drm_connector*)** %86, align 8
  %88 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %89 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %92 = call i64 %87(%struct.TYPE_4__* %90, %struct.drm_connector* %91)
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %82, %75
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %32
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.analogix_dp_device* @to_dp(%struct.drm_connector*) #1

declare dso_local i64 @drm_panel_get_modes(i64) #1

declare dso_local i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @drm_connector_update_edid_property(i32*, %struct.edid*) #1

declare dso_local i64 @drm_add_edid_modes(i32*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
