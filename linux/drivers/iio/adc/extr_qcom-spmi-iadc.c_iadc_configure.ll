; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iadc_chip = type { i32, i32 }

@IADC_OP_MODE_NORMAL = common dso_local global i32 0, align 4
@IADC_OP_MODE_SHIFT = common dso_local global i32 0, align 4
@IADC_TRIM_EN = common dso_local global i32 0, align 4
@IADC_MODE_CTL = common dso_local global i32 0, align 4
@IADC_CH_SEL_CTL = common dso_local global i32 0, align 4
@IADC_DEF_DECIMATION = common dso_local global i32 0, align 4
@IADC_DIG_DEC_RATIO_SEL_SHIFT = common dso_local global i32 0, align 4
@IADC_DIG_PARAM = common dso_local global i32 0, align 4
@IADC_HW_SETTLE_DELAY = common dso_local global i32 0, align 4
@IADC_DEF_HW_SETTLE_TIME = common dso_local global i32 0, align 4
@IADC_FAST_AVG_CTL = common dso_local global i32 0, align 4
@IADC_DEF_AVG_SAMPLES = common dso_local global i32 0, align 4
@IADC_FAST_AVG_EN = common dso_local global i32 0, align 4
@IADC_FAST_AVG_EN_SET = common dso_local global i32 0, align 4
@IADC_CONV_REQ = common dso_local global i32 0, align 4
@IADC_CONV_REQ_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iadc_chip*, i32)* @iadc_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iadc_configure(%struct.iadc_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iadc_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iadc_chip* %0, %struct.iadc_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @IADC_OP_MODE_NORMAL, align 4
  %10 = load i32, i32* @IADC_OP_MODE_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @IADC_TRIM_EN, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %15 = load i32, i32* @IADC_MODE_CTL, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @iadc_write(%struct.iadc_chip* %14, i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %24 = load i32, i32* @IADC_CH_SEL_CTL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @iadc_write(%struct.iadc_chip* %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %99

31:                                               ; preds = %22
  %32 = load i32, i32* @IADC_DEF_DECIMATION, align 4
  %33 = load i32, i32* @IADC_DIG_DEC_RATIO_SEL_SHIFT, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %36 = load i32, i32* @IADC_DIG_PARAM, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @iadc_write(%struct.iadc_chip* %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %99

43:                                               ; preds = %31
  %44 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %45 = load i32, i32* @IADC_HW_SETTLE_DELAY, align 4
  %46 = load i32, i32* @IADC_DEF_HW_SETTLE_TIME, align 4
  %47 = call i32 @iadc_write(%struct.iadc_chip* %44, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %99

52:                                               ; preds = %43
  %53 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %54 = load i32, i32* @IADC_FAST_AVG_CTL, align 4
  %55 = load i32, i32* @IADC_DEF_AVG_SAMPLES, align 4
  %56 = call i32 @iadc_write(%struct.iadc_chip* %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %99

61:                                               ; preds = %52
  %62 = load i32, i32* @IADC_DEF_AVG_SAMPLES, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %66 = load i32, i32* @IADC_FAST_AVG_EN, align 4
  %67 = load i32, i32* @IADC_FAST_AVG_EN_SET, align 4
  %68 = call i32 @iadc_write(%struct.iadc_chip* %65, i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %73

69:                                               ; preds = %61
  %70 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %71 = load i32, i32* @IADC_FAST_AVG_EN, align 4
  %72 = call i32 @iadc_write(%struct.iadc_chip* %70, i32 %71, i32 0)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %99

78:                                               ; preds = %73
  %79 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %80 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %85 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %84, i32 0, i32 0
  %86 = call i32 @reinit_completion(i32* %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %89 = call i32 @iadc_set_state(%struct.iadc_chip* %88, i32 1)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %99

94:                                               ; preds = %87
  %95 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %96 = load i32, i32* @IADC_CONV_REQ, align 4
  %97 = load i32, i32* @IADC_CONV_REQ_SET, align 4
  %98 = call i32 @iadc_write(%struct.iadc_chip* %95, i32 %96, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %94, %92, %76, %59, %50, %41, %29, %20
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @iadc_write(%struct.iadc_chip*, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @iadc_set_state(%struct.iadc_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
