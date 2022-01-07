; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_lfp_panel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_lfp_panel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i32, i32, %struct.TYPE_2__*, %struct.drm_display_mode*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i64, i64 }
%struct.bdb_header = type { i32 }
%struct.bdb_lvds_options = type { i32, i32 }
%struct.bdb_lvds_lfp_data = type { %struct.bdb_lvds_lfp_data_entry* }
%struct.bdb_lvds_lfp_data_entry = type { %struct.lvds_dvo_timing }
%struct.lvds_dvo_timing = type { i32 }

@BDB_LVDS_OPTIONS = common dso_local global i32 0, align 4
@BDB_LVDS_LFP_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"out of memory for fixed panel mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ignoring invalid LVDS VBT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*, %struct.bdb_header*)* @parse_lfp_panel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_lfp_panel_data(%struct.drm_psb_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_lvds_options*, align 8
  %6 = alloca %struct.bdb_lvds_lfp_data*, align 8
  %7 = alloca %struct.bdb_lvds_lfp_data_entry*, align 8
  %8 = alloca %struct.lvds_dvo_timing*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %10, i32 0, i32 4
  store i32 0, i32* %11, align 8
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %15 = load i32, i32* @BDB_LVDS_OPTIONS, align 4
  %16 = call i8* @find_section(%struct.bdb_header* %14, i32 %15)
  %17 = bitcast i8* %16 to %struct.bdb_lvds_options*
  store %struct.bdb_lvds_options* %17, %struct.bdb_lvds_options** %5, align 8
  %18 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %19 = icmp ne %struct.bdb_lvds_options* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %100

21:                                               ; preds = %2
  %22 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %23 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %28 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %33 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %100

37:                                               ; preds = %21
  %38 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %39 = load i32, i32* @BDB_LVDS_LFP_DATA, align 4
  %40 = call i8* @find_section(%struct.bdb_header* %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.bdb_lvds_lfp_data*
  store %struct.bdb_lvds_lfp_data* %41, %struct.bdb_lvds_lfp_data** %6, align 8
  %42 = load %struct.bdb_lvds_lfp_data*, %struct.bdb_lvds_lfp_data** %6, align 8
  %43 = icmp ne %struct.bdb_lvds_lfp_data* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %100

45:                                               ; preds = %37
  %46 = load %struct.bdb_lvds_lfp_data*, %struct.bdb_lvds_lfp_data** %6, align 8
  %47 = getelementptr inbounds %struct.bdb_lvds_lfp_data, %struct.bdb_lvds_lfp_data* %46, i32 0, i32 0
  %48 = load %struct.bdb_lvds_lfp_data_entry*, %struct.bdb_lvds_lfp_data_entry** %47, align 8
  %49 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %5, align 8
  %50 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.bdb_lvds_lfp_data_entry, %struct.bdb_lvds_lfp_data_entry* %48, i64 %52
  store %struct.bdb_lvds_lfp_data_entry* %53, %struct.bdb_lvds_lfp_data_entry** %7, align 8
  %54 = load %struct.bdb_lvds_lfp_data_entry*, %struct.bdb_lvds_lfp_data_entry** %7, align 8
  %55 = getelementptr inbounds %struct.bdb_lvds_lfp_data_entry, %struct.bdb_lvds_lfp_data_entry* %54, i32 0, i32 0
  store %struct.lvds_dvo_timing* %55, %struct.lvds_dvo_timing** %8, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.drm_display_mode* @kzalloc(i32 16, i32 %56)
  store %struct.drm_display_mode* %57, %struct.drm_display_mode** %9, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %59 = icmp eq %struct.drm_display_mode* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %45
  %61 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %62 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %100

67:                                               ; preds = %45
  %68 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %69 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %71 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %8, align 8
  %72 = call i32 @fill_detail_timing_data(%struct.drm_display_mode* %70, %struct.lvds_dvo_timing* %71)
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %67
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %84 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %85 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %84, i32 0, i32 3
  store %struct.drm_display_mode* %83, %struct.drm_display_mode** %85, align 8
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %87 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %86)
  br label %99

88:                                               ; preds = %77, %67
  %89 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %90 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_dbg(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %96 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %98 = call i32 @kfree(%struct.drm_display_mode* %97)
  br label %99

99:                                               ; preds = %88, %82
  br label %100

100:                                              ; preds = %99, %60, %44, %36, %20
  ret void
}

declare dso_local i8* @find_section(%struct.bdb_header*, i32) #1

declare dso_local %struct.drm_display_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @fill_detail_timing_data(%struct.drm_display_mode*, %struct.lvds_dvo_timing*) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @kfree(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
