; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_sync_lt_attempt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_sync_lt_attempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32 }
%struct.dc_link_settings = type { i32 }
%struct.dc_link_training_overrides = type { i64*, i64*, i32* }
%struct.link_training_settings = type { i32 }

@LINK_TRAINING_SUCCESS = common dso_local global i32 0, align 4
@DP_PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_EXTERNAL = common dso_local global i32 0, align 4
@DP_PANEL_MODE_EDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_dp_sync_lt_attempt(%struct.dc_link* %0, %struct.dc_link_settings* %1, %struct.dc_link_training_overrides* %2) #0 {
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %struct.dc_link_settings*, align 8
  %6 = alloca %struct.dc_link_training_overrides*, align 8
  %7 = alloca %struct.link_training_settings, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %4, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %5, align 8
  store %struct.dc_link_training_overrides* %2, %struct.dc_link_training_overrides** %6, align 8
  %11 = load i32, i32* @LINK_TRAINING_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @DP_PANEL_MODE_DEFAULT, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @CLOCK_SOURCE_ID_EXTERNAL, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %15 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %16 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %6, align 8
  %17 = call i32 @initialize_training_settings(%struct.dc_link* %14, %struct.dc_link_settings* %15, %struct.dc_link_training_overrides* %16, %struct.link_training_settings* %7)
  %18 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %6, align 8
  %19 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %24 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %6, align 8
  %25 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_dp_mst_mode(%struct.dc_link* %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %3
  %30 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %31 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %32 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dp_disable_link_phy(%struct.dc_link* %30, i32 %33)
  %35 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %36 = call i32 @get_clock_source_id(%struct.dc_link* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %38 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %39 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %43 = call i32 @dp_enable_link_phy(%struct.dc_link* %37, i32 %40, i32 %41, %struct.dc_link_settings* %42)
  %44 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %6, align 8
  %45 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %29
  %49 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %6, align 8
  %50 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @DP_PANEL_MODE_EDP, align 4
  store i32 %55, i32* %9, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @DP_PANEL_MODE_DEFAULT, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %62

59:                                               ; preds = %29
  %60 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %61 = call i32 @dp_get_panel_mode(%struct.dc_link* %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %58
  %63 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @dp_set_panel_mode(%struct.dc_link* %63, i32 %64)
  %66 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %67 = call i32 @dpcd_set_link_settings(%struct.dc_link* %66, %struct.link_training_settings* %7)
  %68 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %69 = call i32 @perform_clock_recovery_sequence(%struct.dc_link* %68, %struct.link_training_settings* %7)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @LINK_TRAINING_SUCCESS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %75 = call i32 @perform_channel_equalization_sequence(%struct.dc_link* %74, %struct.link_training_settings* %7)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %62
  %77 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @print_status_message(%struct.dc_link* %77, %struct.link_training_settings* %7, i32 %78)
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @initialize_training_settings(%struct.dc_link*, %struct.dc_link_settings*, %struct.dc_link_training_overrides*, %struct.link_training_settings*) #1

declare dso_local i32 @set_dp_mst_mode(%struct.dc_link*, i32) #1

declare dso_local i32 @dp_disable_link_phy(%struct.dc_link*, i32) #1

declare dso_local i32 @get_clock_source_id(%struct.dc_link*) #1

declare dso_local i32 @dp_enable_link_phy(%struct.dc_link*, i32, i32, %struct.dc_link_settings*) #1

declare dso_local i32 @dp_get_panel_mode(%struct.dc_link*) #1

declare dso_local i32 @dp_set_panel_mode(%struct.dc_link*, i32) #1

declare dso_local i32 @dpcd_set_link_settings(%struct.dc_link*, %struct.link_training_settings*) #1

declare dso_local i32 @perform_clock_recovery_sequence(%struct.dc_link*, %struct.link_training_settings*) #1

declare dso_local i32 @perform_channel_equalization_sequence(%struct.dc_link*, %struct.link_training_settings*) #1

declare dso_local i32 @print_status_message(%struct.dc_link*, %struct.link_training_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
