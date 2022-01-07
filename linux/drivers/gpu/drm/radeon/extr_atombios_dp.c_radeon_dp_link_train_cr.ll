; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_dp_link_train_info = type { i32*, i32, i32, i32, i32, i32 }

@DP_TRAINING_PATTERN_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"displayport link status failed\0A\00", align 1
@DP_TRAIN_MAX_SWING_REACHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"clock recovery reached max voltage\0A\00", align 1
@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"clock recovery tried 5 times\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"clock recovery failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"clock recovery at voltage %d pre-emphasis %d\0A\00", align 1
@DP_TRAIN_PRE_EMPHASIS_MASK = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_dp_link_train_info*)* @radeon_dp_link_train_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_link_train_cr(%struct.radeon_dp_link_train_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_dp_link_train_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_dp_link_train_info* %0, %struct.radeon_dp_link_train_info** %3, align 8
  %7 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %8 = load i32, i32* @DP_TRAINING_PATTERN_1, align 4
  %9 = call i32 @radeon_dp_set_tp(%struct.radeon_dp_link_train_info* %7, i32 %8)
  %10 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @memset(i32* %12, i32 0, i32 4)
  %14 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %15 = call i32 @radeon_dp_update_vs_emph(%struct.radeon_dp_link_train_info* %14)
  %16 = call i32 @udelay(i32 400)
  store i32 0, i32* %4, align 4
  %17 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  store i32 255, i32* %5, align 4
  br label %19

19:                                               ; preds = %1, %100
  %20 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @drm_dp_link_train_clock_recovery_delay(i32 %22)
  %24 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @drm_dp_dpcd_read_link_status(i32 %26, i32 %29)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %120

34:                                               ; preds = %19
  %35 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @drm_dp_clock_recovery_ok(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %120

44:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %64, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DP_TRAIN_MAX_SWING_REACHED, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %67

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %45

67:                                               ; preds = %62, %45
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %120

75:                                               ; preds = %67
  %76 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %75
  %86 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 5
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %120

96:                                               ; preds = %85
  br label %100

97:                                               ; preds = %75
  %98 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %98, i32 0, i32 1
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %96
  %101 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %5, align 4
  %108 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @dp_get_adjust_train(i32 %110, i32 %113, i32* %116)
  %118 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %119 = call i32 @radeon_dp_update_vs_emph(%struct.radeon_dp_link_train_info* %118)
  br label %19

120:                                              ; preds = %94, %73, %43, %32
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %143

125:                                              ; preds = %120
  %126 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load %struct.radeon_dp_link_train_info*, %struct.radeon_dp_link_train_info** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_MASK, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_SHIFT, align 4
  %141 = ashr i32 %139, %140
  %142 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %125, %123
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @radeon_dp_set_tp(%struct.radeon_dp_link_train_info*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @radeon_dp_update_vs_emph(%struct.radeon_dp_link_train_info*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @drm_dp_link_train_clock_recovery_delay(i32) #1

declare dso_local i64 @drm_dp_dpcd_read_link_status(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @drm_dp_clock_recovery_ok(i32, i32) #1

declare dso_local i32 @dp_get_adjust_train(i32, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
