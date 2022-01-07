; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_sdvo_panel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_sdvo_panel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_sdvo_lvds_options = type { i32 }
%struct.lvds_dvo_timing = type { i32 }

@BDB_SDVO_LVDS_OPTIONS = common dso_local global i32 0, align 4
@BDB_SDVO_PANEL_DTDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*, %struct.bdb_header*)* @parse_sdvo_panel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_sdvo_panel_data(%struct.drm_psb_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_sdvo_lvds_options*, align 8
  %6 = alloca %struct.lvds_dvo_timing*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %8 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %8, i32 0, i32 0
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %9, align 8
  %10 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %11 = load i32, i32* @BDB_SDVO_LVDS_OPTIONS, align 4
  %12 = call i8* @find_section(%struct.bdb_header* %10, i32 %11)
  %13 = bitcast i8* %12 to %struct.bdb_sdvo_lvds_options*
  store %struct.bdb_sdvo_lvds_options* %13, %struct.bdb_sdvo_lvds_options** %5, align 8
  %14 = load %struct.bdb_sdvo_lvds_options*, %struct.bdb_sdvo_lvds_options** %5, align 8
  %15 = icmp ne %struct.bdb_sdvo_lvds_options* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %19 = load i32, i32* @BDB_SDVO_PANEL_DTDS, align 4
  %20 = call i8* @find_section(%struct.bdb_header* %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.lvds_dvo_timing*
  store %struct.lvds_dvo_timing* %21, %struct.lvds_dvo_timing** %6, align 8
  %22 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %6, align 8
  %23 = icmp ne %struct.lvds_dvo_timing* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %43

25:                                               ; preds = %17
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.drm_display_mode* @kzalloc(i32 4, i32 %26)
  store %struct.drm_display_mode* %27, %struct.drm_display_mode** %7, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %29 = icmp ne %struct.drm_display_mode* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %43

31:                                               ; preds = %25
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %33 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %6, align 8
  %34 = load %struct.bdb_sdvo_lvds_options*, %struct.bdb_sdvo_lvds_options** %5, align 8
  %35 = getelementptr inbounds %struct.bdb_sdvo_lvds_options, %struct.bdb_sdvo_lvds_options* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %33, i64 %37
  %39 = call i32 @fill_detail_timing_data(%struct.drm_display_mode* %32, %struct.lvds_dvo_timing* %38)
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %41 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %42 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %41, i32 0, i32 0
  store %struct.drm_display_mode* %40, %struct.drm_display_mode** %42, align 8
  br label %43

43:                                               ; preds = %31, %30, %24, %16
  ret void
}

declare dso_local i8* @find_section(%struct.bdb_header*, i32) #1

declare dso_local %struct.drm_display_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @fill_detail_timing_data(%struct.drm_display_mode*, %struct.lvds_dvo_timing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
