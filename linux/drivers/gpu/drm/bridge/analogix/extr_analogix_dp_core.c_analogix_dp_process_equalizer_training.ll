; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_process_equalizer_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_process_equalizer_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32*, i32 }

@DP_LANE0_1_STATUS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DP_ADJUST_REQUEST_LANE0_1 = common dso_local global i32 0, align 4
@DP_LANE_ALIGN_STATUS_UPDATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Link Training success!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"final bandwidth = %.2x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"final lane count = %.2x\0A\00", align 1
@FINISHED = common dso_local global i32 0, align 4
@MAX_EQ_LOOP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"EQ Max loop\0A\00", align 1
@DP_TRAINING_LANE0_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_process_equalizer_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_process_equalizer_training(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %11 = call i32 @usleep_range(i32 400, i32 401)
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %13 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %17 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %16, i32 0, i32 1
  %18 = load i32, i32* @DP_LANE0_1_STATUS, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %20 = call i32 @drm_dp_dpcd_read(i32* %17, i32 %18, i32* %19, i32 2)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %165

25:                                               ; preds = %1
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @analogix_dp_clock_recovery_ok(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %32 = call i32 @analogix_dp_reduce_link_rate(%struct.analogix_dp_device* %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %165

35:                                               ; preds = %25
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %37 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %36, i32 0, i32 1
  %38 = load i32, i32* @DP_ADJUST_REQUEST_LANE0_1, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %40 = call i32 @drm_dp_dpcd_read(i32* %37, i32 %38, i32* %39, i32 2)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %165

45:                                               ; preds = %35
  %46 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %47 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %46, i32 0, i32 1
  %48 = load i32, i32* @DP_LANE_ALIGN_STATUS_UPDATED, align 4
  %49 = call i32 @drm_dp_dpcd_readb(i32* %47, i32 %48, i32* %8)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %165

54:                                               ; preds = %45
  %55 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %57 = call i32 @analogix_dp_get_adjust_training_lane(%struct.analogix_dp_device* %55, i32* %56)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @analogix_dp_channel_eq_ok(i32* %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %109, label %63

63:                                               ; preds = %54
  %64 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %65 = call i32 @analogix_dp_training_pattern_dis(%struct.analogix_dp_device* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %165

70:                                               ; preds = %63
  %71 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %72 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %76 = call i32 @analogix_dp_get_link_bandwidth(%struct.analogix_dp_device* %75, i8** %7)
  %77 = load i8*, i8** %7, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %80 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %83 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %86 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @dev_dbg(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %91 = call i32 @analogix_dp_get_lane_count(%struct.analogix_dp_device* %90, i8** %7)
  %92 = load i8*, i8** %7, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %95 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %98 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %101 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @FINISHED, align 4
  %106 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %107 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  store i32 %105, i32* %108, align 8
  store i32 0, i32* %2, align 4
  br label %165

109:                                              ; preds = %54
  %110 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %111 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %116 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MAX_EQ_LOOP, align 8
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %109
  %122 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %123 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %127 = call i32 @analogix_dp_reduce_link_rate(%struct.analogix_dp_device* %126)
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %165

130:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %147, %130
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %137 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %138 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @analogix_dp_set_lane_link_training(%struct.analogix_dp_device* %136, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %131

150:                                              ; preds = %131
  %151 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %152 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %151, i32 0, i32 1
  %153 = load i32, i32* @DP_TRAINING_LANE0_SET, align 4
  %154 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %155 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @drm_dp_dpcd_write(i32* %152, i32 %153, i32* %157, i32 %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %2, align 4
  br label %165

164:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %162, %121, %70, %68, %52, %43, %30, %23
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32*, i32) #1

declare dso_local i64 @analogix_dp_clock_recovery_ok(i32*, i32) #1

declare dso_local i32 @analogix_dp_reduce_link_rate(%struct.analogix_dp_device*) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @analogix_dp_get_adjust_training_lane(%struct.analogix_dp_device*, i32*) #1

declare dso_local i32 @analogix_dp_channel_eq_ok(i32*, i32, i32) #1

declare dso_local i32 @analogix_dp_training_pattern_dis(%struct.analogix_dp_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @analogix_dp_get_link_bandwidth(%struct.analogix_dp_device*, i8**) #1

declare dso_local i32 @analogix_dp_get_lane_count(%struct.analogix_dp_device*, i8**) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @analogix_dp_set_lane_link_training(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_write(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
