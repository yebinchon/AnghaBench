; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_parallel-display.c_imx_pd_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_parallel-display.c_imx_pd_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.imx_parallel_display = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.drm_display_mode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OF_USE_NATIVE_MODE = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @imx_pd_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pd_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.imx_parallel_display*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.imx_parallel_display* @con_to_imxpd(%struct.drm_connector* %9)
  store %struct.imx_parallel_display* %10, %struct.imx_parallel_display** %4, align 8
  %11 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %4, align 8
  %12 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %4, align 8
  %17 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @drm_panel_get_modes(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %84

24:                                               ; preds = %1
  %25 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %4, align 8
  %26 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %31 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %4, align 8
  %32 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %30, i64 %33)
  %35 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %36 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %4, align 8
  %37 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @drm_add_edid_modes(%struct.drm_connector* %35, i64 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %29, %24
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = icmp ne %struct.device_node* %41, null
  br i1 %42, label %43, label %82

43:                                               ; preds = %40
  %44 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.drm_display_mode* @drm_mode_create(i32 %46)
  store %struct.drm_display_mode* %47, %struct.drm_display_mode** %7, align 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %49 = icmp ne %struct.drm_display_mode* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %84

53:                                               ; preds = %43
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %4, align 8
  %56 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %55, i32 0, i32 0
  %57 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %4, align 8
  %58 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %57, i32 0, i32 1
  %59 = load i32, i32* @OF_USE_NATIVE_MODE, align 4
  %60 = call i32 @of_get_drm_display_mode(%struct.device_node* %54, i32* %56, i32* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %84

65:                                               ; preds = %53
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %67 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %4, align 8
  %68 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %67, i32 0, i32 0
  %69 = call i32 @drm_mode_copy(%struct.drm_display_mode* %66, i32* %68)
  %70 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %71 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %79 = call i32 @drm_mode_probed_add(%struct.drm_connector* %77, %struct.drm_display_mode* %78)
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %65, %40
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %63, %50, %22
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.imx_parallel_display* @con_to_imxpd(%struct.drm_connector*) #1

declare dso_local i32 @drm_panel_get_modes(i32) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, i64) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, i64) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @of_get_drm_display_mode(%struct.device_node*, i32*, i32*, i32) #1

declare dso_local i32 @drm_mode_copy(%struct.drm_display_mode*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
