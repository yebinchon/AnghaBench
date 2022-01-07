; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.imx_ldb_channel = type { i32, i64, i64, i64, i32 }
%struct.drm_display_mode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @imx_ldb_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ldb_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.imx_ldb_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.imx_ldb_channel* @con_to_imx_ldb_ch(%struct.drm_connector* %7)
  store %struct.imx_ldb_channel* %8, %struct.imx_ldb_channel** %4, align 8
  %9 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %10 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @drm_panel_get_modes(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %19 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %24 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %29 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %30 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @drm_get_edid(%struct.drm_connector* %28, i64 %31)
  %33 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %34 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %22, %17
  %36 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %37 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %42 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %43 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %41, i64 %44)
  %46 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %47 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %48 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @drm_add_edid_modes(%struct.drm_connector* %46, i64 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %40, %35
  %52 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %53 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %58 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.drm_display_mode* @drm_mode_create(i32 %59)
  store %struct.drm_display_mode* %60, %struct.drm_display_mode** %6, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %62 = icmp ne %struct.drm_display_mode* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %85

66:                                               ; preds = %56
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %68 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %4, align 8
  %69 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %68, i32 0, i32 0
  %70 = call i32 @drm_mode_copy(%struct.drm_display_mode* %67, i32* %69)
  %71 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %72 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %80 = call i32 @drm_mode_probed_add(%struct.drm_connector* %78, %struct.drm_display_mode* %79)
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %66, %51
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %63, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.imx_ldb_channel* @con_to_imx_ldb_ch(%struct.drm_connector*) #1

declare dso_local i32 @drm_panel_get_modes(i32) #1

declare dso_local i64 @drm_get_edid(%struct.drm_connector*, i64) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, i64) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, i64) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @drm_mode_copy(%struct.drm_display_mode*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
