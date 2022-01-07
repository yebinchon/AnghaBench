; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_training_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_training_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64 }

@SCRAMBLING_ENABLE = common dso_local global i32 0, align 4
@LINK_QUAL_PATTERN_SET_PRBS7 = common dso_local global i32 0, align 4
@ANALOGIX_DP_TRAINING_PTN_SET = common dso_local global i64 0, align 8
@LINK_QUAL_PATTERN_SET_D10_2 = common dso_local global i32 0, align 4
@SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@SW_TRAINING_PATTERN_SET_PTN1 = common dso_local global i32 0, align 4
@SW_TRAINING_PATTERN_SET_PTN2 = common dso_local global i32 0, align 4
@LINK_QUAL_PATTERN_SET_DISABLE = common dso_local global i32 0, align 4
@SW_TRAINING_PATTERN_SET_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_set_training_pattern(%struct.analogix_dp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %64 [
    i32 130, label %7
    i32 132, label %18
    i32 129, label %29
    i32 128, label %40
    i32 131, label %51
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @SCRAMBLING_ENABLE, align 4
  %9 = load i32, i32* @LINK_QUAL_PATTERN_SET_PRBS7, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %13 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ANALOGIX_DP_TRAINING_PTN_SET, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  br label %65

18:                                               ; preds = %2
  %19 = load i32, i32* @SCRAMBLING_ENABLE, align 4
  %20 = load i32, i32* @LINK_QUAL_PATTERN_SET_D10_2, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %24 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ANALOGIX_DP_TRAINING_PTN_SET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  br label %65

29:                                               ; preds = %2
  %30 = load i32, i32* @SCRAMBLING_DISABLE, align 4
  %31 = load i32, i32* @SW_TRAINING_PATTERN_SET_PTN1, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %35 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ANALOGIX_DP_TRAINING_PTN_SET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  br label %65

40:                                               ; preds = %2
  %41 = load i32, i32* @SCRAMBLING_DISABLE, align 4
  %42 = load i32, i32* @SW_TRAINING_PATTERN_SET_PTN2, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %46 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ANALOGIX_DP_TRAINING_PTN_SET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  br label %65

51:                                               ; preds = %2
  %52 = load i32, i32* @SCRAMBLING_ENABLE, align 4
  %53 = load i32, i32* @LINK_QUAL_PATTERN_SET_DISABLE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SW_TRAINING_PATTERN_SET_NORMAL, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %59 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ANALOGIX_DP_TRAINING_PTN_SET, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  br label %65

64:                                               ; preds = %2
  br label %65

65:                                               ; preds = %64, %51, %40, %29, %18, %7
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
