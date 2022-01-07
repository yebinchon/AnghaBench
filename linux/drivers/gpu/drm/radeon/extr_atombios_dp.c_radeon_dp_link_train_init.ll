; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_dp_link_train_info = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i64 }

@DP_SET_POWER_D0 = common dso_local global i32 0, align 4
@DP_DOWNSPREAD_CTRL = common dso_local global i32 0, align 4
@DP_SPREAD_AMP_0_5 = common dso_local global i32 0, align 4
@DP_PANEL_MODE_INTERNAL_DP2_MODE = common dso_local global i64 0, align 8
@DP_EDP_CONFIGURATION_SET = common dso_local global i32 0, align 4
@DP_LANE_COUNT_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4
@DP_LANE_COUNT_SET = common dso_local global i32 0, align 4
@DP_LINK_BW_SET = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_LINK_TRAINING_START = common dso_local global i32 0, align 4
@ATOM_DP_ACTION_TRAINING_START = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_dp_link_train_info*)* @radeon_dp_link_train_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_link_train_init(%struct.radeon_dp_link_train_info* %0) #0 {
  %2 = alloca %struct.radeon_dp_link_train_info*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_dp_link_train_info* %0, %struct.radeon_dp_link_train_info** %2, align 8
  %6 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %8)
  store %struct.radeon_encoder* %9, %struct.radeon_encoder** %3, align 8
  %10 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %10, i32 0, i32 0
  %12 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %11, align 8
  store %struct.radeon_encoder_atom_dig* %12, %struct.radeon_encoder_atom_dig** %4, align 8
  %13 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DP_SET_POWER_D0, align 4
  %17 = call i32 @radeon_dp_set_rx_power_state(i32 %15, i32 %16)
  %18 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DP_DOWNSPREAD_CTRL, align 4
  %30 = load i32, i32* @DP_SPREAD_AMP_0_5, align 4
  %31 = call i32 @drm_dp_dpcd_writeb(i32 %28, i32 %29, i32 %30)
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DP_DOWNSPREAD_CTRL, align 4
  %37 = call i32 @drm_dp_dpcd_writeb(i32 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DP_PANEL_MODE_INTERNAL_DP2_MODE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DP_EDP_CONFIGURATION_SET, align 4
  %49 = call i32 @drm_dp_dpcd_writeb(i32 %47, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %5, align 4
  %54 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @drm_dp_enhanced_frame_cap(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %50
  %64 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %65 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DP_LANE_COUNT_SET, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @drm_dp_dpcd_writeb(i32 %66, i32 %67, i32 %68)
  %70 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @drm_dp_link_rate_to_bw_code(i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DP_LINK_BW_SET, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @drm_dp_dpcd_writeb(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %81 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @ASIC_IS_DCE4(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %63
  %86 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85, %63
  %91 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %92 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ATOM_ENCODER_CMD_DP_LINK_TRAINING_START, align 4
  %95 = call i32 @atombios_dig_encoder_setup(i32 %93, i32 %94, i32 0)
  br label %108

96:                                               ; preds = %85
  %97 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ATOM_DP_ACTION_TRAINING_START, align 4
  %101 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %102 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %105 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @radeon_dp_encoder_service(i32 %99, i32 %100, i32 %103, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %96, %90
  %109 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %2, align 8
  %110 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %113 = load i32, i32* @DP_TRAINING_PATTERN_DISABLE, align 4
  %114 = call i32 @drm_dp_dpcd_writeb(i32 %111, i32 %112, i32 %113)
  ret i32 0
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @radeon_dp_set_rx_power_state(i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32, i32, i32) #1

declare dso_local i64 @drm_dp_enhanced_frame_cap(i32*) #1

declare dso_local i32 @drm_dp_link_rate_to_bw_code(i32) #1

declare dso_local i64 @ASIC_IS_DCE4(i32) #1

declare dso_local i32 @atombios_dig_encoder_setup(i32, i32, i32) #1

declare dso_local i32 @radeon_dp_encoder_service(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
