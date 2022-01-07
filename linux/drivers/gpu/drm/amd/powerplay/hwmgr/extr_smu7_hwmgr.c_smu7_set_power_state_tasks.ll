; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_set_power_state_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_set_power_state_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.smu7_hwmgr = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Failed to find DPM states clocks in DPM table!\00", align 1
@PHM_PlatformCaps_PCIEPerformanceRequest = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed to request link speed change before state change!\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to freeze SCLK MCLK DPM!\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to populate and upload SCLK MCLK DPM levels!\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to update avfs voltages!\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to generate DPM level enabled mask!\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to update SCLK threshold!\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to notify smc display settings!\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to unfreeze SCLK MCLK DPM!\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Failed to upload DPM level enabled mask!\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Failed to notify link speed change after state change!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8*)* @smu7_set_power_state_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_set_power_state_tasks(%struct.pp_hwmgr* %0, i8* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %11, %struct.smu7_hwmgr** %7, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @smu7_find_dpm_states_clocks_in_dpm_table(%struct.pp_hwmgr* %12, i8* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 0, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %6, align 4
  %19 = call i32 @PP_ASSERT_WITH_CODE(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PHM_PlatformCaps_PCIEPerformanceRequest, align 4
  %25 = call i64 @phm_cap_enabled(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @smu7_request_link_speed_change_before_state_change(%struct.pp_hwmgr* %28, i8* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 0, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %6, align 4
  %35 = call i32 @PP_ASSERT_WITH_CODE(i32 %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %27, %2
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %38 = call i32 @smu7_freeze_sclk_mclk_dpm(%struct.pp_hwmgr* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 0, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %6, align 4
  %43 = call i32 @PP_ASSERT_WITH_CODE(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @smu7_populate_and_upload_sclk_mclk_dpm_levels(%struct.pp_hwmgr* %44, i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 0, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %6, align 4
  %51 = call i32 @PP_ASSERT_WITH_CODE(i32 %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = call i32 @smu7_update_avfs(%struct.pp_hwmgr* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 0, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %6, align 4
  %58 = call i32 @PP_ASSERT_WITH_CODE(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @smu7_generate_dpm_level_enable_mask(%struct.pp_hwmgr* %59, i8* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 0, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %6, align 4
  %66 = call i32 @PP_ASSERT_WITH_CODE(i32 %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %68 = call i32 @smum_update_sclk_threshold(%struct.pp_hwmgr* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 0, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %6, align 4
  %73 = call i32 @PP_ASSERT_WITH_CODE(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %75 = call i32 @smu7_notify_smc_display(%struct.pp_hwmgr* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 0, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %6, align 4
  %80 = call i32 @PP_ASSERT_WITH_CODE(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %82 = call i32 @smu7_unfreeze_sclk_mclk_dpm(%struct.pp_hwmgr* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 0, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %6, align 4
  %87 = call i32 @PP_ASSERT_WITH_CODE(i32 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %89 = call i32 @smu7_upload_dpm_level_enable_mask(%struct.pp_hwmgr* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 0, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %6, align 4
  %94 = call i32 @PP_ASSERT_WITH_CODE(i32 %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %93)
  %95 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %96 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PHM_PlatformCaps_PCIEPerformanceRequest, align 4
  %100 = call i64 @phm_cap_enabled(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %36
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @smu7_notify_link_speed_change_after_state_change(%struct.pp_hwmgr* %103, i8* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp eq i32 0, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %6, align 4
  %110 = call i32 @PP_ASSERT_WITH_CODE(i32 %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %102, %36
  %112 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %113 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @smu7_find_dpm_states_clocks_in_dpm_table(%struct.pp_hwmgr*, i8*) #1

declare dso_local i32 @PP_ASSERT_WITH_CODE(i32, i8*, i32) #1

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i32 @smu7_request_link_speed_change_before_state_change(%struct.pp_hwmgr*, i8*) #1

declare dso_local i32 @smu7_freeze_sclk_mclk_dpm(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_populate_and_upload_sclk_mclk_dpm_levels(%struct.pp_hwmgr*, i8*) #1

declare dso_local i32 @smu7_update_avfs(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_generate_dpm_level_enable_mask(%struct.pp_hwmgr*, i8*) #1

declare dso_local i32 @smum_update_sclk_threshold(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_notify_smc_display(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_unfreeze_sclk_mclk_dpm(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_upload_dpm_level_enable_mask(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_notify_link_speed_change_after_state_change(%struct.pp_hwmgr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
