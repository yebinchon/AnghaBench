; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_full_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_full_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@DP_LINK_BW_1_62 = common dso_local global i64 0, align 8
@DP_LINK_BW_2_7 = common dso_local global i64 0, align 8
@DP_LINK_BW_5_4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Rx Max Link Rate is abnormal :%x !\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Rx Max Lane count is abnormal :%x !\0A\00", align 1
@LANE_COUNT1 = common dso_local global i64 0, align 8
@POWER_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"LT link start failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"LT CR failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"LT EQ failed!\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"eDP link training failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*, i64, i64)* @analogix_dp_full_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_full_link_train(%struct.analogix_dp_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.analogix_dp_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %11 = call i32 @analogix_dp_reset_macro(%struct.analogix_dp_device* %10)
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %14 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @analogix_dp_get_max_rx_bandwidth(%struct.analogix_dp_device* %12, i64* %15)
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %18 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %19 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @analogix_dp_get_max_rx_lane_count(%struct.analogix_dp_device* %17, i64* %20)
  %22 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %23 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DP_LINK_BW_1_62, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %3
  %29 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %30 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DP_LINK_BW_2_7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %37 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DP_LINK_BW_5_4, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %44 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %47 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i64, i64* @DP_LINK_BW_1_62, align 8
  %52 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %53 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  br label %55

55:                                               ; preds = %42, %35, %28, %3
  %56 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %57 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %63 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %66 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* @LANE_COUNT1, align 8
  %71 = trunc i64 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %74 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %61, %55
  %77 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %78 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %86 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %76
  %89 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %90 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %98 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  br label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %102 = load i32, i32* @POWER_ALL, align 4
  %103 = call i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device* %101, i32 %102, i32 0)
  %104 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %105 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i32 128, i32* %106, align 8
  br label %107

107:                                              ; preds = %158, %100
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  br i1 %115, label %116, label %159

116:                                              ; preds = %114
  %117 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %118 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %158 [
    i32 128, label %121
    i32 132, label %132
    i32 131, label %143
    i32 129, label %154
    i32 130, label %155
  ]

121:                                              ; preds = %116
  %122 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %123 = call i32 @analogix_dp_link_start(%struct.analogix_dp_device* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %128 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %126, %121
  br label %158

132:                                              ; preds = %116
  %133 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %134 = call i32 @analogix_dp_process_clock_recovery(%struct.analogix_dp_device* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %139 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @dev_err(i32 %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %137, %132
  br label %158

143:                                              ; preds = %116
  %144 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %145 = call i32 @analogix_dp_process_equalizer_training(%struct.analogix_dp_device* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %150 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, ...) @dev_err(i32 %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %148, %143
  br label %158

154:                                              ; preds = %116
  store i32 1, i32* %9, align 4
  br label %158

155:                                              ; preds = %116
  %156 = load i32, i32* @EREMOTEIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %170

158:                                              ; preds = %116, %154, %153, %142, %131
  br label %107

159:                                              ; preds = %114
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %164 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (i32, i8*, ...) @dev_err(i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %162, %159
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %155
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @analogix_dp_reset_macro(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_get_max_rx_bandwidth(%struct.analogix_dp_device*, i64*) #1

declare dso_local i32 @analogix_dp_get_max_rx_lane_count(%struct.analogix_dp_device*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @analogix_dp_link_start(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_process_clock_recovery(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_process_equalizer_training(%struct.analogix_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
