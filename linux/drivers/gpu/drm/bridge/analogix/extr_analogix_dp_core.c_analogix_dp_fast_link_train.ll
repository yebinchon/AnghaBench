; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_fast_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_fast_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@analogix_dp_get_pll_lock_status = common dso_local global i32 0, align 4
@PLL_UNLOCKED = common dso_local global i32 0, align 4
@DP_TIMEOUT_LOOP_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Wait for pll lock failed %d\0A\00", align 1
@TRAINING_PTN1 = common dso_local global i32 0, align 4
@TRAINING_PTN2 = common dso_local global i32 0, align 4
@DP_NONE = common dso_local global i32 0, align 4
@verify_fast_training = common dso_local global i64 0, align 8
@DP_LANE_ALIGN_STATUS_UPDATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Read align status failed %d\0A\00", align 1
@DP_LANE0_1_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Read link status failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Clock recovery failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Channel EQ failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_fast_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_fast_link_train(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %9 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %10 = call i32 @analogix_dp_reset_macro(%struct.analogix_dp_device* %9)
  %11 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %13 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @analogix_dp_set_link_bandwidth(%struct.analogix_dp_device* %11, i32 %15)
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %18 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %19 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @analogix_dp_set_lane_count(%struct.analogix_dp_device* %17, i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %42, %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %26 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %32 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %33 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @analogix_dp_set_lane_link_training(%struct.analogix_dp_device* %31, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i32, i32* @analogix_dp_get_pll_lock_status, align 4
  %47 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PLL_UNLOCKED, align 4
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @DP_TIMEOUT_LOOP_COUNT, align 4
  %54 = mul nsw i32 120, %53
  %55 = call i32 @readx_poll_timeout(i32 %46, %struct.analogix_dp_device* %47, i32 %48, i32 %52, i32 120, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %45
  %59 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %60 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %145

65:                                               ; preds = %45
  %66 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %67 = load i32, i32* @TRAINING_PTN1, align 4
  %68 = call i32 @analogix_dp_set_training_pattern(%struct.analogix_dp_device* %66, i32 %67)
  %69 = call i32 @usleep_range(i32 500, i32 600)
  %70 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %71 = load i32, i32* @TRAINING_PTN2, align 4
  %72 = call i32 @analogix_dp_set_training_pattern(%struct.analogix_dp_device* %70, i32 %71)
  %73 = call i32 @usleep_range(i32 500, i32 600)
  %74 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %75 = load i32, i32* @DP_NONE, align 4
  %76 = call i32 @analogix_dp_set_training_pattern(%struct.analogix_dp_device* %74, i32 %75)
  %77 = load i64, i64* @verify_fast_training, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %144

79:                                               ; preds = %65
  %80 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %81 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %80, i32 0, i32 2
  %82 = load i32, i32* @DP_LANE_ALIGN_STATUS_UPDATED, align 4
  %83 = call i32 @drm_dp_dpcd_readb(i32* %81, i32 %82, i32* %6)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %88 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %145

93:                                               ; preds = %79
  %94 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %95 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %94, i32 0, i32 2
  %96 = load i32, i32* @DP_LANE0_1_STATUS, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %98 = call i32 @drm_dp_dpcd_read(i32* %95, i32 %96, i32* %97, i32 2)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %103 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %145

108:                                              ; preds = %93
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %110 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %111 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @analogix_dp_clock_recovery_ok(i32* %109, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %118 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %122 = call i32 @analogix_dp_reduce_link_rate(%struct.analogix_dp_device* %121)
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %145

125:                                              ; preds = %108
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %129 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @analogix_dp_channel_eq_ok(i32* %126, i32 %127, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %125
  %135 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %136 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %137, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %139 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %140 = call i32 @analogix_dp_reduce_link_rate(%struct.analogix_dp_device* %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %145

143:                                              ; preds = %125
  br label %144

144:                                              ; preds = %143, %65
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %134, %116, %101, %86, %58
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @analogix_dp_reset_macro(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_set_link_bandwidth(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_set_lane_count(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_set_lane_link_training(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @readx_poll_timeout(i32, %struct.analogix_dp_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @analogix_dp_set_training_pattern(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32*, i32) #1

declare dso_local i64 @analogix_dp_clock_recovery_ok(i32*, i32) #1

declare dso_local i32 @analogix_dp_reduce_link_rate(%struct.analogix_dp_device*) #1

declare dso_local i64 @analogix_dp_channel_eq_ok(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
