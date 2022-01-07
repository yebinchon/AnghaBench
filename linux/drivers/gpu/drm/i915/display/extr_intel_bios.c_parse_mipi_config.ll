; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_mipi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_mipi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i8* }
%struct.bdb_header = type { i32 }
%struct.bdb_mipi_config = type { %struct.mipi_pps_data*, %struct.mipi_pps_data* }
%struct.mipi_pps_data = type { i32 }
%struct.mipi_config = type { i32 }

@MIPI_DSI_UNDEFINED_PANEL_ID = common dso_local global i32 0, align 4
@BDB_MIPI_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No MIPI config BDB found\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Found MIPI Config block, panel index = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_UNKNOWN = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_RIGHT_UP = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_LEFT_UP = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_PANEL_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_mipi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_mipi_config(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_mipi_config*, align 8
  %6 = alloca %struct.mipi_config*, align 8
  %7 = alloca %struct.mipi_pps_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i32 @intel_bios_is_dsi_present(%struct.drm_i915_private* %14, i32* %9)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %123

18:                                               ; preds = %2
  %19 = load i32, i32* @MIPI_DSI_UNDEFINED_PANEL_ID, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %25 = load i32, i32* @BDB_MIPI_CONFIG, align 4
  %26 = call %struct.bdb_mipi_config* @find_section(%struct.bdb_header* %24, i32 %25)
  store %struct.bdb_mipi_config* %26, %struct.bdb_mipi_config** %5, align 8
  %27 = load %struct.bdb_mipi_config*, %struct.bdb_mipi_config** %5, align 8
  %28 = icmp ne %struct.bdb_mipi_config* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %123

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.bdb_mipi_config*, %struct.bdb_mipi_config** %5, align 8
  %35 = getelementptr inbounds %struct.bdb_mipi_config, %struct.bdb_mipi_config* %34, i32 0, i32 1
  %36 = load %struct.mipi_pps_data*, %struct.mipi_pps_data** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mipi_pps_data, %struct.mipi_pps_data* %36, i64 %38
  %40 = bitcast %struct.mipi_pps_data* %39 to %struct.mipi_config*
  store %struct.mipi_config* %40, %struct.mipi_config** %6, align 8
  %41 = load %struct.bdb_mipi_config*, %struct.bdb_mipi_config** %5, align 8
  %42 = getelementptr inbounds %struct.bdb_mipi_config, %struct.bdb_mipi_config* %41, i32 0, i32 0
  %43 = load %struct.mipi_pps_data*, %struct.mipi_pps_data** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mipi_pps_data, %struct.mipi_pps_data* %43, i64 %45
  store %struct.mipi_pps_data* %46, %struct.mipi_pps_data** %7, align 8
  %47 = load %struct.mipi_config*, %struct.mipi_config** %6, align 8
  %48 = bitcast %struct.mipi_config* %47 to %struct.mipi_pps_data*
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kmemdup(%struct.mipi_pps_data* %48, i32 4, i32 %49)
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i8* %50, i8** %54, align 8
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %31
  br label %123

62:                                               ; preds = %31
  %63 = load %struct.mipi_pps_data*, %struct.mipi_pps_data** %7, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kmemdup(%struct.mipi_pps_data* %63, i32 4, i32 %64)
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %67 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i8* %65, i8** %69, align 8
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %62
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %78 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @kfree(i8* %81)
  br label %123

83:                                               ; preds = %62
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %86 = getelementptr inbounds %struct.bdb_header, %struct.bdb_header* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @parse_dsi_backlight_ports(%struct.drm_i915_private* %84, i32 %87, i32 %88)
  %90 = load %struct.mipi_config*, %struct.mipi_config** %6, align 8
  %91 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %117 [
    i32 131, label %93
    i32 128, label %99
    i32 130, label %105
    i32 129, label %111
  ]

93:                                               ; preds = %83
  %94 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_UNKNOWN, align 4
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %96 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  br label %117

99:                                               ; preds = %83
  %100 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_RIGHT_UP, align 4
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %102 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 4
  br label %117

105:                                              ; preds = %83
  %106 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP, align 4
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %108 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  br label %117

111:                                              ; preds = %83
  %112 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_LEFT_UP, align 4
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %114 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %83, %111, %105, %99, %93
  %118 = load i32, i32* @MIPI_DSI_GENERIC_PANEL_ID, align 4
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %120 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  br label %123

123:                                              ; preds = %117, %76, %61, %29, %17
  ret void
}

declare dso_local i32 @intel_bios_is_dsi_present(%struct.drm_i915_private*, i32*) #1

declare dso_local %struct.bdb_mipi_config* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i8* @kmemdup(%struct.mipi_pps_data*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @parse_dsi_backlight_ports(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
