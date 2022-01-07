; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_perform_link_training_skip_aux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_perform_link_training_skip_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32 }
%struct.dc_link_settings = type { i32 }
%struct.link_training_settings = type { i32, i32, i32 }

@DP_TRAINING_PATTERN_SEQUENCE_1 = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_VIDEO_MODE = common dso_local global i32 0, align 4
@LINK_TRAINING_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_dp_perform_link_training_skip_aux(%struct.dc_link* %0, %struct.dc_link_settings* %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca %struct.dc_link_settings*, align 8
  %5 = alloca %struct.link_training_settings, align 4
  %6 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %4, align 8
  %7 = load i32, i32* @DP_TRAINING_PATTERN_SEQUENCE_1, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %9 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %10 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %11 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %10, i32 0, i32 0
  %12 = call i32 @initialize_training_settings(%struct.dc_link* %8, %struct.dc_link_settings* %9, i32* %11, %struct.link_training_settings* %5)
  %13 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dp_set_hw_training_pattern(%struct.dc_link* %13, i32 %14)
  %16 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %17 = call i32 @dp_set_hw_lane_settings(%struct.dc_link* %16, %struct.link_training_settings* %5)
  %18 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %19 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %5, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wait_for_training_aux_rd_interval(%struct.dc_link* %18, i32 %20)
  %22 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %23 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dp_set_hw_training_pattern(%struct.dc_link* %22, i32 %24)
  %26 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %27 = call i32 @dp_set_hw_lane_settings(%struct.dc_link* %26, %struct.link_training_settings* %5)
  %28 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %29 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wait_for_training_aux_rd_interval(%struct.dc_link* %28, i32 %30)
  %32 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %33 = load i32, i32* @DP_TEST_PATTERN_VIDEO_MODE, align 4
  %34 = call i32 @dp_set_hw_test_pattern(%struct.dc_link* %32, i32 %33, i32* null, i32 0)
  %35 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %36 = load i32, i32* @LINK_TRAINING_SUCCESS, align 4
  %37 = call i32 @print_status_message(%struct.dc_link* %35, %struct.link_training_settings* %5, i32 %36)
  ret i32 1
}

declare dso_local i32 @initialize_training_settings(%struct.dc_link*, %struct.dc_link_settings*, i32*, %struct.link_training_settings*) #1

declare dso_local i32 @dp_set_hw_training_pattern(%struct.dc_link*, i32) #1

declare dso_local i32 @dp_set_hw_lane_settings(%struct.dc_link*, %struct.link_training_settings*) #1

declare dso_local i32 @wait_for_training_aux_rd_interval(%struct.dc_link*, i32) #1

declare dso_local i32 @dp_set_hw_test_pattern(%struct.dc_link*, i32, i32*, i32) #1

declare dso_local i32 @print_status_message(%struct.dc_link*, %struct.link_training_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
