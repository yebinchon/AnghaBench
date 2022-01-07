; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_drm_dp_aux_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_drm_dp_aux_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.drm_dp_link = type { i32 }

@DP_TRAINING_PATTERN_MASK = common dso_local global i32 0, align 4
@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_DISABLE = common dso_local global i32 0, align 4
@DP_TRAIN_MAX_PRE_EMPHASIS_REACHED = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_0 = common dso_local global i32 0, align 4
@DP_TRAIN_MAX_SWING_REACHED = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_LEVEL_0 = common dso_local global i32 0, align 4
@DP_TRAINING_LANE0_SET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unsupported training pattern %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DP_EDP_CONFIGURATION_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_aux_train(%struct.drm_dp_aux* %0, %struct.drm_dp_link* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_aux*, align 8
  %6 = alloca %struct.drm_dp_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %5, align 8
  store %struct.drm_dp_link* %1, %struct.drm_dp_link** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DP_TRAINING_PATTERN_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %23 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %22, i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %115

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @DP_TRAINING_PATTERN_DISABLE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %115

35:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.drm_dp_link*, %struct.drm_dp_link** %6, align 8
  %39 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load i32, i32* @DP_TRAIN_MAX_PRE_EMPHASIS_REACHED, align 4
  %44 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_0, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @DP_TRAIN_MAX_SWING_REACHED, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_LEVEL_0, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %51
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %58 = load i32, i32* @DP_TRAINING_LANE0_SET, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %60 = load %struct.drm_dp_link*, %struct.drm_dp_link** %6, align 8
  %61 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @drm_dp_dpcd_write(%struct.drm_dp_aux* %57, i32 %58, i32* %59, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %115

68:                                               ; preds = %56
  %69 = call i32 @usleep_range(i32 500, i32 1000)
  %70 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %71 = call i32 @drm_dp_dpcd_read_link_status(%struct.drm_dp_aux* %70, i32* %21)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %115

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  switch i32 %77, label %98 [
    i32 129, label %78
    i32 128, label %88
  ]

78:                                               ; preds = %76
  %79 = load %struct.drm_dp_link*, %struct.drm_dp_link** %6, align 8
  %80 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @drm_dp_clock_recovery_ok(i32* %21, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %115

87:                                               ; preds = %78
  br label %106

88:                                               ; preds = %76
  %89 = load %struct.drm_dp_link*, %struct.drm_dp_link** %6, align 8
  %90 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @drm_dp_channel_eq_ok(i32* %21, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %115

97:                                               ; preds = %88
  br label %106

98:                                               ; preds = %76
  %99 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %100 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %115

106:                                              ; preds = %97, %87
  %107 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %5, align 8
  %108 = load i32, i32* @DP_EDP_CONFIGURATION_SET, align 4
  %109 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %107, i32 %108, i32 0)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %115

114:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %115

115:                                              ; preds = %114, %112, %98, %94, %84, %74, %66, %34, %28
  %116 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #2

declare dso_local i32 @drm_dp_dpcd_write(%struct.drm_dp_aux*, i32, i32*, i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @drm_dp_dpcd_read_link_status(%struct.drm_dp_aux*, i32*) #2

declare dso_local i32 @drm_dp_clock_recovery_ok(i32*, i32) #2

declare dso_local i32 @drm_dp_channel_eq_ok(i32*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
