; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_link_training_clock_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_link_training_clock_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i64*, i32*, i32, i32, i32, {}* }

@.str = private unnamed_addr constant [30 x i8] c"Using LINK_BW_SET value %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Using LINK_RATE_SET value %02x\0A\00", align 1
@DP_LANE_COUNT_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4
@DP_LINK_BW_SET = common dso_local global i32 0, align 4
@DP_LINK_RATE_SET = common dso_local global i32 0, align 4
@DP_SET_ANSI_8B10B = common dso_local global i32 0, align 4
@DP_DOWNSPREAD_CTRL = common dso_local global i32 0, align 4
@DP_PORT_EN = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_1 = common dso_local global i32 0, align 4
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to enable link training\0A\00", align 1
@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_DPCD_REV_14 = common dso_local global i64 0, align 8
@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get link status\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"clock recovery OK\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Same voltage tried 5 times\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Max Voltage Swing reached\0A\00", align 1
@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to update link training\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Failed clock recovery %d times, giving up!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_link_training_clock_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_link_training_clock_recovery(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %16 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %15, i32 0, i32 6
  %17 = bitcast {}** %16 to i32 (%struct.intel_dp*)**
  %18 = load i32 (%struct.intel_dp*)*, i32 (%struct.intel_dp*)** %17, align 8
  %19 = icmp ne i32 (%struct.intel_dp*)* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 6
  %23 = bitcast {}** %22 to i32 (%struct.intel_dp*)**
  %24 = load i32 (%struct.intel_dp*)*, i32 (%struct.intel_dp*)** %23, align 8
  %25 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %26 = call i32 %24(%struct.intel_dp* %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %29 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %30 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @intel_dp_compute_rate(%struct.intel_dp* %28, i32 %31, i32* %10, i32* %11)
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %41

38:                                               ; preds = %27
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %10, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %45 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %49 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = call i64 @drm_dp_enhanced_frame_cap(i64* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %41
  %59 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %60 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %59, i32 0, i32 4
  %61 = load i32, i32* @DP_LINK_BW_SET, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %63 = call i32 @drm_dp_dpcd_write(i32* %60, i32 %61, i32* %62, i32 2)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %68 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %67, i32 0, i32 4
  %69 = load i32, i32* @DP_LINK_RATE_SET, align 4
  %70 = call i32 @drm_dp_dpcd_write(i32* %68, i32 %69, i32* %11, i32 1)
  br label %71

71:                                               ; preds = %66, %58
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* @DP_SET_ANSI_8B10B, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %76 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %75, i32 0, i32 4
  %77 = load i32, i32* @DP_DOWNSPREAD_CTRL, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %79 = call i32 @drm_dp_dpcd_write(i32* %76, i32 %77, i32* %78, i32 2)
  %80 = load i32, i32* @DP_PORT_EN, align 4
  %81 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %82 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %86 = load i32, i32* @DP_TRAINING_PATTERN_1, align 4
  %87 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @intel_dp_reset_link_train(%struct.intel_dp* %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %71
  %92 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %186

93:                                               ; preds = %71
  %94 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %95 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @DP_DPCD_REV, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DP_DPCD_REV_14, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 10, i32* %7, align 4
  br label %104

103:                                              ; preds = %93
  store i32 80, i32* %7, align 4
  br label %104

104:                                              ; preds = %103, %102
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %180, %104
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %183

109:                                              ; preds = %105
  %110 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %111 = zext i32 %110 to i64
  %112 = call i8* @llvm.stacksave()
  store i8* %112, i8** %12, align 8
  %113 = alloca i32, i64 %111, align 16
  store i64 %111, i64* %13, align 8
  %114 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %115 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = call i32 @drm_dp_link_train_clock_recovery_delay(i64* %116)
  %118 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %119 = call i32 @intel_dp_get_link_status(%struct.intel_dp* %118, i32* %113)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %109
  %122 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

123:                                              ; preds = %109
  %124 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %125 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @drm_dp_clock_recovery_ok(i32* %113, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

131:                                              ; preds = %123
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 5
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

136:                                              ; preds = %131
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

141:                                              ; preds = %136
  %142 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %143 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %148 = and i32 %146, %147
  store i32 %148, i32* %4, align 4
  %149 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %150 = call i32 @intel_get_adjust_train(%struct.intel_dp* %149, i32* %113)
  %151 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %152 = call i32 @intel_dp_update_link_train(%struct.intel_dp* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %141
  %155 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

156:                                              ; preds = %141
  %157 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %158 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* %4, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %156
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %170

169:                                              ; preds = %156
  store i32 1, i32* %5, align 4
  br label %170

170:                                              ; preds = %169, %166
  %171 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %172 = call i64 @intel_dp_link_max_vswing_reached(%struct.intel_dp* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store i32 1, i32* %8, align 4
  br label %175

175:                                              ; preds = %174, %170
  store i32 0, i32* %14, align 4
  br label %176

176:                                              ; preds = %175, %154, %139, %134, %129, %121
  %177 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %14, align 4
  switch i32 %178, label %188 [
    i32 0, label %179
    i32 1, label %186
  ]

179:                                              ; preds = %176
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %105

183:                                              ; preds = %105
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %184)
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %183, %176, %91
  %187 = load i32, i32* %2, align 4
  ret i32 %187

188:                                              ; preds = %176
  unreachable
}

declare dso_local i32 @intel_dp_compute_rate(%struct.intel_dp*, i32, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @drm_dp_enhanced_frame_cap(i64*) #1

declare dso_local i32 @drm_dp_dpcd_write(i32*, i32, i32*, i32) #1

declare dso_local i32 @intel_dp_reset_link_train(%struct.intel_dp*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @drm_dp_link_train_clock_recovery_delay(i64*) #1

declare dso_local i32 @intel_dp_get_link_status(%struct.intel_dp*, i32*) #1

declare dso_local i64 @drm_dp_clock_recovery_ok(i32*, i32) #1

declare dso_local i32 @intel_get_adjust_train(%struct.intel_dp*, i32*) #1

declare dso_local i32 @intel_dp_update_link_train(%struct.intel_dp*) #1

declare dso_local i64 @intel_dp_link_max_vswing_reached(%struct.intel_dp*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
