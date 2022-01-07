; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_process_clock_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_process_clock_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64*, i32*, i32 }

@DP_LANE0_1_STATUS = common dso_local global i32 0, align 4
@DP_ADJUST_REQUEST_LANE0_1 = common dso_local global i32 0, align 4
@TRAINING_PTN2 = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Link Training Clock Recovery success\0A\00", align 1
@EQUALIZER_TRAINING = common dso_local global i32 0, align 4
@MAX_CR_LOOP = common dso_local global i64 0, align 8
@VOLTAGE_LEVEL_3 = common dso_local global i64 0, align 8
@PRE_EMPHASIS_LEVEL_3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"CR Max reached (%d,%d,%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DP_TRAINING_LANE0_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_process_clock_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_process_clock_recovery(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca [2 x i64], align 16
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %12 = call i32 @usleep_range(i32 100, i32 101)
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %14 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %18 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %17, i32 0, i32 1
  %19 = load i32, i32* @DP_LANE0_1_STATUS, align 4
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %21 = call i32 @drm_dp_dpcd_read(i32* %18, i32 %19, i64* %20, i32 2)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %180

26:                                               ; preds = %1
  %27 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %28 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %27, i32 0, i32 1
  %29 = load i32, i32* @DP_ADJUST_REQUEST_LANE0_1, align 4
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %31 = call i32 @drm_dp_dpcd_read(i32* %28, i32 %29, i64* %30, i32 2)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %180

36:                                               ; preds = %26
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @analogix_dp_clock_recovery_ok(i64* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %43 = load i32, i32* @TRAINING_PTN2, align 4
  %44 = call i32 @analogix_dp_set_training_pattern(%struct.analogix_dp_device* %42, i32 %43)
  %45 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %46 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %45, i32 0, i32 1
  %47 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %48 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %49 = load i32, i32* @DP_TRAINING_PATTERN_2, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @drm_dp_dpcd_writeb(i32* %46, i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %180

56:                                               ; preds = %41
  %57 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %58 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EQUALIZER_TRAINING, align 4
  %62 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %63 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 8
  br label %142

65:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %138, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %141

70:                                               ; preds = %66
  %71 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @analogix_dp_get_lane_link_training(%struct.analogix_dp_device* %71, i32 %72)
  store i64 %73, i64* %9, align 8
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @analogix_dp_get_adjust_request_voltage(i64* %74, i32 %75)
  store i64 %76, i64* %7, align 8
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @analogix_dp_get_adjust_request_pre_emphasis(i64* %77, i32 %78)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @DPCD_VOLTAGE_SWING_GET(i64 %80)
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %70
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @DPCD_PRE_EMPHASIS_GET(i64 %85)
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %91 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %89, %84, %70
  %100 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %101 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MAX_CR_LOOP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %99
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @VOLTAGE_LEVEL_3, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @PRE_EMPHASIS_LEVEL_3, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %114, %110, %99
  %119 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %120 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %123 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %129, i64 %130, i64 %131)
  %133 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %134 = call i32 @analogix_dp_reduce_link_rate(%struct.analogix_dp_device* %133)
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %180

137:                                              ; preds = %114
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %66

141:                                              ; preds = %66
  br label %142

142:                                              ; preds = %141, %56
  %143 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %144 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %145 = call i32 @analogix_dp_get_adjust_training_lane(%struct.analogix_dp_device* %143, i64* %144)
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %162, %142
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %152 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %153 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @analogix_dp_set_lane_link_training(%struct.analogix_dp_device* %151, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %150
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %146

165:                                              ; preds = %146
  %166 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %167 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %166, i32 0, i32 1
  %168 = load i32, i32* @DP_TRAINING_LANE0_SET, align 4
  %169 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %170 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @drm_dp_dpcd_write(i32* %167, i32 %168, i32* %172, i32 %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %165
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %2, align 4
  br label %180

179:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %177, %118, %54, %34, %24
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i64*, i32) #1

declare dso_local i64 @analogix_dp_clock_recovery_ok(i64*, i32) #1

declare dso_local i32 @analogix_dp_set_training_pattern(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @analogix_dp_get_lane_link_training(%struct.analogix_dp_device*, i32) #1

declare dso_local i64 @analogix_dp_get_adjust_request_voltage(i64*, i32) #1

declare dso_local i64 @analogix_dp_get_adjust_request_pre_emphasis(i64*, i32) #1

declare dso_local i64 @DPCD_VOLTAGE_SWING_GET(i64) #1

declare dso_local i64 @DPCD_PRE_EMPHASIS_GET(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @analogix_dp_reduce_link_rate(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_get_adjust_training_lane(%struct.analogix_dp_device*, i64*) #1

declare dso_local i32 @analogix_dp_set_lane_link_training(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_write(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
