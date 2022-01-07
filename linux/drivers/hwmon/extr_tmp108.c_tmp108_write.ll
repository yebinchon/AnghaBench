; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp108.c_tmp108_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp108.c_tmp108_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tmp108 = type { i32 }

@hwmon_chip = common dso_local global i32 0, align 4
@hwmon_chip_update_interval = common dso_local global i32 0, align 4
@TMP108_CONVRATE_16HZ = common dso_local global i32 0, align 4
@TMP108_CONVRATE_4HZ = common dso_local global i32 0, align 4
@TMP108_CONVRATE_1HZ = common dso_local global i32 0, align 4
@TMP108_CONVRATE_0P25HZ = common dso_local global i32 0, align 4
@TMP108_REG_CONF = common dso_local global i32 0, align 4
@TMP108_CONF_CONVRATE_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TMP108_TEMP_MIN_MC = common dso_local global i32 0, align 4
@TMP108_TEMP_MAX_MC = common dso_local global i32 0, align 4
@TMP108_REG_TLOW = common dso_local global i32 0, align 4
@TMP108_REG_THIGH = common dso_local global i32 0, align 4
@TMP108_HYSTERESIS_0C = common dso_local global i32 0, align 4
@TMP108_HYSTERESIS_1C = common dso_local global i32 0, align 4
@TMP108_HYSTERESIS_2C = common dso_local global i32 0, align 4
@TMP108_HYSTERESIS_4C = common dso_local global i32 0, align 4
@TMP108_CONF_HYSTERESIS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @tmp108_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp108_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tmp108*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.tmp108* @dev_get_drvdata(%struct.device* %16)
  store %struct.tmp108* %17, %struct.tmp108** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @hwmon_chip, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @hwmon_chip_update_interval, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8
  %27 = icmp slt i64 %26, 156
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @TMP108_CONVRATE_16HZ, align 4
  store i32 %29, i32* %14, align 4
  br label %44

30:                                               ; preds = %25
  %31 = load i64, i64* %11, align 8
  %32 = icmp slt i64 %31, 625
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @TMP108_CONVRATE_4HZ, align 4
  store i32 %34, i32* %14, align 4
  br label %43

35:                                               ; preds = %30
  %36 = load i64, i64* %11, align 8
  %37 = icmp slt i64 %36, 2500
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @TMP108_CONVRATE_1HZ, align 4
  store i32 %39, i32* %14, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @TMP108_CONVRATE_0P25HZ, align 4
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %33
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.tmp108*, %struct.tmp108** %12, align 8
  %46 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TMP108_REG_CONF, align 4
  %49 = load i32, i32* @TMP108_CONF_CONVRATE_MASK, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %140

52:                                               ; preds = %21
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %140

55:                                               ; preds = %5
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %137 [
    i32 129, label %57
    i32 131, label %57
    i32 128, label %76
    i32 130, label %76
  ]

57:                                               ; preds = %55, %55
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* @TMP108_TEMP_MIN_MC, align 4
  %60 = load i32, i32* @TMP108_TEMP_MAX_MC, align 4
  %61 = call i64 @clamp_val(i64 %58, i32 %59, i32 %60)
  store i64 %61, i64* %11, align 8
  %62 = load %struct.tmp108*, %struct.tmp108** %12, align 8
  %63 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 129
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @TMP108_REG_TLOW, align 4
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @TMP108_REG_THIGH, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @tmp108_mC_to_temp_reg(i64 %73)
  %75 = call i32 @regmap_write(i32 %64, i32 %72, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %140

76:                                               ; preds = %55, %55
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* @TMP108_TEMP_MIN_MC, align 4
  %79 = load i32, i32* @TMP108_TEMP_MAX_MC, align 4
  %80 = call i64 @clamp_val(i64 %77, i32 %78, i32 %79)
  store i64 %80, i64* %11, align 8
  %81 = load %struct.tmp108*, %struct.tmp108** %12, align 8
  %82 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* @TMP108_REG_TLOW, align 4
  br label %90

88:                                               ; preds = %76
  %89 = load i32, i32* @TMP108_REG_THIGH, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = call i32 @regmap_read(i32 %83, i32 %91, i32* %13)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %6, align 4
  br label %140

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 128
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = call i64 @tmp108_temp_reg_to_mC(i32 %101)
  %103 = load i64, i64* %11, align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* %11, align 8
  br label %110

105:                                              ; preds = %97
  %106 = load i32, i32* %13, align 4
  %107 = call i64 @tmp108_temp_reg_to_mC(i32 %106)
  %108 = load i64, i64* %11, align 8
  %109 = sub nsw i64 %107, %108
  store i64 %109, i64* %11, align 8
  br label %110

110:                                              ; preds = %105, %100
  %111 = load i64, i64* %11, align 8
  %112 = icmp slt i64 %111, 500
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @TMP108_HYSTERESIS_0C, align 4
  store i32 %114, i32* %14, align 4
  br label %129

115:                                              ; preds = %110
  %116 = load i64, i64* %11, align 8
  %117 = icmp slt i64 %116, 1500
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @TMP108_HYSTERESIS_1C, align 4
  store i32 %119, i32* %14, align 4
  br label %128

120:                                              ; preds = %115
  %121 = load i64, i64* %11, align 8
  %122 = icmp slt i64 %121, 3000
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* @TMP108_HYSTERESIS_2C, align 4
  store i32 %124, i32* %14, align 4
  br label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @TMP108_HYSTERESIS_4C, align 4
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %125, %123
  br label %128

128:                                              ; preds = %127, %118
  br label %129

129:                                              ; preds = %128, %113
  %130 = load %struct.tmp108*, %struct.tmp108** %12, align 8
  %131 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @TMP108_REG_CONF, align 4
  %134 = load i32, i32* @TMP108_CONF_HYSTERESIS_MASK, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %6, align 4
  br label %140

137:                                              ; preds = %55
  %138 = load i32, i32* @EOPNOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %137, %129, %95, %71, %52, %44
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.tmp108* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @tmp108_mC_to_temp_reg(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @tmp108_temp_reg_to_mC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
