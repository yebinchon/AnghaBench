; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_lfp_panel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_lfp_panel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.drm_display_mode*, i32, i32 }
%struct.drm_display_mode = type { i64, i64 }
%struct.bdb_header = type { i32 }
%struct.bdb_lvds_options = type { i32, i32, i32 }
%struct.bdb_lvds_lfp_data = type { i32 }
%struct.bdb_lvds_lfp_data_ptrs = type { i32 }
%struct.lvds_dvo_timing = type { i32 }
%struct.lvds_fp_timing = type { i64, i64, i32 }

@BDB_LVDS_OPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Panel type: %d (OpRegion)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid VBT panel type 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Panel type: %d (VBT)\0A\00", align 1
@MODE_MASK = common dso_local global i32 0, align 4
@STATIC_DRRS_SUPPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"DRRS supported mode is static\0A\00", align 1
@SEAMLESS_DRRS_SUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"DRRS supported mode is seamless\0A\00", align 1
@DRRS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"DRRS not supported (VBT input)\0A\00", align 1
@BDB_LVDS_LFP_DATA = common dso_local global i32 0, align 4
@BDB_LVDS_LFP_DATA_PTRS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Found panel mode in BIOS VBT tables:\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"VBT initial LVDS value %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_lfp_panel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_lfp_panel_data(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_lvds_options*, align 8
  %6 = alloca %struct.bdb_lvds_lfp_data*, align 8
  %7 = alloca %struct.bdb_lvds_lfp_data_ptrs*, align 8
  %8 = alloca %struct.lvds_dvo_timing*, align 8
  %9 = alloca %struct.lvds_fp_timing*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %14 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %15 = load i32, i32* @BDB_LVDS_OPTIONS, align 4
  %16 = call i8* @find_section(%struct.bdb_header* %14, i32 %15)
  %17 = bitcast i8* %16 to %struct.bdb_lvds_options*
  store %struct.bdb_lvds_options* %17, %struct.bdb_lvds_options** %5, align 8
  %18 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %19 = icmp ne %struct.bdb_lvds_options* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %161

21:                                               ; preds = %2
  %22 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %23 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = call i32 @intel_opregion_get_panel_type(%struct.drm_i915_private* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 15
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %56

40:                                               ; preds = %21
  %41 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %42 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 15
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %47 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %161

50:                                               ; preds = %40
  %51 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %52 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %32
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %62 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = mul nsw i32 %64, 2
  %66 = ashr i32 %63, %65
  %67 = load i32, i32* @MODE_MASK, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  switch i32 %69, label %82 [
    i32 0, label %70
    i32 2, label %76
  ]

70:                                               ; preds = %56
  %71 = load i32, i32* @STATIC_DRRS_SUPPORT, align 4
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 8
  %75 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %88

76:                                               ; preds = %56
  %77 = load i32, i32* @SEAMLESS_DRRS_SUPPORT, align 4
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  %81 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %88

82:                                               ; preds = %56
  %83 = load i32, i32* @DRRS_NOT_SUPPORTED, align 4
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 8
  %87 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %82, %76, %70
  %89 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %90 = load i32, i32* @BDB_LVDS_LFP_DATA, align 4
  %91 = call i8* @find_section(%struct.bdb_header* %89, i32 %90)
  %92 = bitcast i8* %91 to %struct.bdb_lvds_lfp_data*
  store %struct.bdb_lvds_lfp_data* %92, %struct.bdb_lvds_lfp_data** %6, align 8
  %93 = load %struct.bdb_lvds_lfp_data*, %struct.bdb_lvds_lfp_data** %6, align 8
  %94 = icmp ne %struct.bdb_lvds_lfp_data* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  br label %161

96:                                               ; preds = %88
  %97 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %98 = load i32, i32* @BDB_LVDS_LFP_DATA_PTRS, align 4
  %99 = call i8* @find_section(%struct.bdb_header* %97, i32 %98)
  %100 = bitcast i8* %99 to %struct.bdb_lvds_lfp_data_ptrs*
  store %struct.bdb_lvds_lfp_data_ptrs* %100, %struct.bdb_lvds_lfp_data_ptrs** %7, align 8
  %101 = load %struct.bdb_lvds_lfp_data_ptrs*, %struct.bdb_lvds_lfp_data_ptrs** %7, align 8
  %102 = icmp ne %struct.bdb_lvds_lfp_data_ptrs* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  br label %161

104:                                              ; preds = %96
  %105 = load %struct.bdb_lvds_lfp_data*, %struct.bdb_lvds_lfp_data** %6, align 8
  %106 = load %struct.bdb_lvds_lfp_data_ptrs*, %struct.bdb_lvds_lfp_data_ptrs** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call %struct.lvds_dvo_timing* @get_lvds_dvo_timing(%struct.bdb_lvds_lfp_data* %105, %struct.bdb_lvds_lfp_data_ptrs* %106, i32 %107)
  store %struct.lvds_dvo_timing* %108, %struct.lvds_dvo_timing** %8, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call %struct.drm_display_mode* @kzalloc(i32 16, i32 %109)
  store %struct.drm_display_mode* %110, %struct.drm_display_mode** %10, align 8
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %112 = icmp ne %struct.drm_display_mode* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  br label %161

114:                                              ; preds = %104
  %115 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %116 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %8, align 8
  %117 = call i32 @fill_detail_timing_data(%struct.drm_display_mode* %115, %struct.lvds_dvo_timing* %116)
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %120 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store %struct.drm_display_mode* %118, %struct.drm_display_mode** %121, align 8
  %122 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %124 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %123)
  %125 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %126 = load %struct.bdb_lvds_lfp_data*, %struct.bdb_lvds_lfp_data** %6, align 8
  %127 = load %struct.bdb_lvds_lfp_data_ptrs*, %struct.bdb_lvds_lfp_data_ptrs** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call %struct.lvds_fp_timing* @get_lvds_fp_timing(%struct.bdb_header* %125, %struct.bdb_lvds_lfp_data* %126, %struct.bdb_lvds_lfp_data_ptrs* %127, i32 %128)
  store %struct.lvds_fp_timing* %129, %struct.lvds_fp_timing** %9, align 8
  %130 = load %struct.lvds_fp_timing*, %struct.lvds_fp_timing** %9, align 8
  %131 = icmp ne %struct.lvds_fp_timing* %130, null
  br i1 %131, label %132, label %161

132:                                              ; preds = %114
  %133 = load %struct.lvds_fp_timing*, %struct.lvds_fp_timing** %9, align 8
  %134 = getelementptr inbounds %struct.lvds_fp_timing, %struct.lvds_fp_timing* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %135, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %132
  %141 = load %struct.lvds_fp_timing*, %struct.lvds_fp_timing** %9, align 8
  %142 = getelementptr inbounds %struct.lvds_fp_timing, %struct.lvds_fp_timing* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %143, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %140
  %149 = load %struct.lvds_fp_timing*, %struct.lvds_fp_timing** %9, align 8
  %150 = getelementptr inbounds %struct.lvds_fp_timing, %struct.lvds_fp_timing* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %153 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %156 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %148, %140, %132
  br label %161

161:                                              ; preds = %20, %45, %95, %103, %113, %160, %114
  ret void
}

declare dso_local i8* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @intel_opregion_get_panel_type(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local %struct.lvds_dvo_timing* @get_lvds_dvo_timing(%struct.bdb_lvds_lfp_data*, %struct.bdb_lvds_lfp_data_ptrs*, i32) #1

declare dso_local %struct.drm_display_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @fill_detail_timing_data(%struct.drm_display_mode*, %struct.lvds_dvo_timing*) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

declare dso_local %struct.lvds_fp_timing* @get_lvds_fp_timing(%struct.bdb_header*, %struct.bdb_lvds_lfp_data*, %struct.bdb_lvds_lfp_data_ptrs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
