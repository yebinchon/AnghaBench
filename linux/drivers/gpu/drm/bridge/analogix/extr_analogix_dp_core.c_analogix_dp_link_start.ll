; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_link_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64*, i64, i32 }

@CLOCK_RECOVERY = common dso_local global i32 0, align 4
@DP_LINK_BW_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to set enhance mode\0A\00", align 1
@PRE_EMPHASIS_LEVEL_0 = common dso_local global i32 0, align 4
@PLL_UNLOCKED = common dso_local global i64 0, align 8
@DP_TIMEOUT_LOOP_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Wait for PLL lock timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@TRAINING_PTN1 = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_1 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_0 = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_LEVEL_0 = common dso_local global i32 0, align 4
@DP_TRAINING_LANE0_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_link_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_link_start(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %9 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %10 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @CLOCK_RECOVERY, align 4
  %14 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %15 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 8
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %18 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %26 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %37 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %38 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @analogix_dp_set_link_bandwidth(%struct.analogix_dp_device* %36, i32 %40)
  %42 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %43 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %44 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @analogix_dp_set_lane_count(%struct.analogix_dp_device* %42, i32 %46)
  %48 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %49 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32 %51, i32* %52, align 16
  %53 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %54 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %59 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %58, i32 0, i32 0
  %60 = load i32, i32* @DP_LINK_BW_SET, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %62 = call i32 @drm_dp_dpcd_write(i32* %59, i32 %60, i32* %61, i32 2)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %35
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %154

67:                                               ; preds = %35
  %68 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %69 = call i32 @analogix_dp_set_enhanced_mode(%struct.analogix_dp_device* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %74 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %154

78:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %88, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %85 = load i32, i32* @PRE_EMPHASIS_LEVEL_0, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @analogix_dp_set_lane_lane_pre_emphasis(%struct.analogix_dp_device* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %79

91:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %108, %91
  %93 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %94 = call i64 @analogix_dp_get_pll_lock_status(%struct.analogix_dp_device* %93)
  %95 = load i64, i64* @PLL_UNLOCKED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @DP_TIMEOUT_LOOP_COUNT, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %103 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @ETIMEDOUT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %154

108:                                              ; preds = %97
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  %111 = call i32 @usleep_range(i32 90, i32 120)
  br label %92

112:                                              ; preds = %92
  %113 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %114 = load i32, i32* @TRAINING_PTN1, align 4
  %115 = call i32 @analogix_dp_set_training_pattern(%struct.analogix_dp_device* %113, i32 %114)
  %116 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %117 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %116, i32 0, i32 0
  %118 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %119 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %120 = load i32, i32* @DP_TRAINING_PATTERN_1, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @drm_dp_dpcd_writeb(i32* %117, i32 %118, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %154

127:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %139, %127
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_0, align 4
  %134 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_LEVEL_0, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %137
  store i32 %135, i32* %138, align 4
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %128

142:                                              ; preds = %128
  %143 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %144 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %143, i32 0, i32 0
  %145 = load i32, i32* @DP_TRAINING_LANE0_SET, align 4
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @drm_dp_dpcd_write(i32* %144, i32 %145, i32* %146, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %2, align 4
  br label %154

153:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %151, %125, %101, %72, %65
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @analogix_dp_set_link_bandwidth(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_set_lane_count(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @drm_dp_dpcd_write(i32*, i32, i32*, i32) #1

declare dso_local i32 @analogix_dp_set_enhanced_mode(%struct.analogix_dp_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @analogix_dp_set_lane_lane_pre_emphasis(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i64 @analogix_dp_get_pll_lock_status(%struct.analogix_dp_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @analogix_dp_set_training_pattern(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
