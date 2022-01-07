; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm32_adc_common = type { i32 }
%struct.stm32_adc_priv = type { i32, i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"vdda enable failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"vdda get voltage failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"vref enable failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"bus clk enable failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"adc clk enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @stm32_adc_core_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_core_hw_start(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.stm32_adc_common*, align 8
  %5 = alloca %struct.stm32_adc_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.stm32_adc_common* @dev_get_drvdata(%struct.device* %7)
  store %struct.stm32_adc_common* %8, %struct.stm32_adc_common** %4, align 8
  %9 = load %struct.stm32_adc_common*, %struct.stm32_adc_common** %4, align 8
  %10 = call %struct.stm32_adc_priv* @to_stm32_adc_priv(%struct.stm32_adc_common* %9)
  store %struct.stm32_adc_priv* %10, %struct.stm32_adc_priv** %5, align 8
  %11 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %12 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regulator_enable(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %127

22:                                               ; preds = %1
  %23 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regulator_get_voltage(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %121

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %36 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call i32 @stm32_adc_core_switches_supply_en(%struct.stm32_adc_priv* %37, %struct.device* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %121

43:                                               ; preds = %33
  %44 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %45 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @regulator_enable(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %118

53:                                               ; preds = %43
  %54 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %55 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %60 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @clk_prepare_enable(i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %113

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %53
  %70 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %71 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %76 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @clk_prepare_enable(i64 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %102

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %69
  %86 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %87 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %90 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %94 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %93, i32 0, i32 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %92, %99
  %101 = call i32 @writel_relaxed(i32 %88, i64 %100)
  store i32 0, i32* %2, align 4
  br label %127

102:                                              ; preds = %81
  %103 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %104 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %109 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @clk_disable_unprepare(i64 %110)
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %65
  %114 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %115 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @regulator_disable(i32 %116)
  br label %118

118:                                              ; preds = %113, %50
  %119 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %120 = call i32 @stm32_adc_core_switches_supply_dis(%struct.stm32_adc_priv* %119)
  br label %121

121:                                              ; preds = %118, %42, %29
  %122 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %123 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @regulator_disable(i32 %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %121, %85, %17
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.stm32_adc_common* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.stm32_adc_priv* @to_stm32_adc_priv(%struct.stm32_adc_common*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @stm32_adc_core_switches_supply_en(%struct.stm32_adc_priv*, %struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @stm32_adc_core_switches_supply_dis(%struct.stm32_adc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
