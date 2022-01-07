; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_config_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_config_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.device = type { i32 }

@BMI160_INT1_OUT_CTRL_SHIFT = common dso_local global i32 0, align 4
@BMI160_INT1_LATCH_MASK = common dso_local global i32 0, align 4
@BMI160_INT1_MAP_DRDY_EN = common dso_local global i32 0, align 4
@BMI160_INT2_OUT_CTRL_SHIFT = common dso_local global i32 0, align 4
@BMI160_INT2_LATCH_MASK = common dso_local global i32 0, align 4
@BMI160_INT2_MAP_DRDY_EN = common dso_local global i32 0, align 4
@BMI160_INT_OUT_CTRL_MASK = common dso_local global i32 0, align 4
@BMI160_OUTPUT_EN = common dso_local global i32 0, align 4
@BMI160_OPEN_DRAIN = common dso_local global i32 0, align 4
@BMI160_REG_INT_OUT_CTRL = common dso_local global i32 0, align 4
@BMI160_REG_INT_LATCH = common dso_local global i32 0, align 4
@BMI160_REG_INT_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"INT1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INT2\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to configure %s IRQ pin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32, i32, i64)* @bmi160_config_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmi160_config_pin(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.regmap* %0, %struct.regmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %20 = load %struct.regmap*, %struct.regmap** %7, align 8
  %21 = call %struct.device* @regmap_get_device(%struct.regmap* %20)
  store %struct.device* %21, %struct.device** %13, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %5
  %24 = load i32, i32* @BMI160_INT1_OUT_CTRL_SHIFT, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @BMI160_INT1_LATCH_MASK, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* @BMI160_INT1_MAP_DRDY_EN, align 4
  store i32 %26, i32* %16, align 4
  br label %31

27:                                               ; preds = %5
  %28 = load i32, i32* @BMI160_INT2_OUT_CTRL_SHIFT, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* @BMI160_INT2_LATCH_MASK, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* @BMI160_INT2_MAP_DRDY_EN, align 4
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %5, %27, %23
  %32 = load i32, i32* @BMI160_INT_OUT_CTRL_MASK, align 4
  %33 = load i32, i32* %14, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* @BMI160_OUTPUT_EN, align 4
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @BMI160_OPEN_DRAIN, align 4
  %40 = load i32, i32* %18, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %18, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %18, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %18, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %18, align 4
  %49 = load %struct.regmap*, %struct.regmap** %7, align 8
  %50 = load i32, i32* @BMI160_REG_INT_OUT_CTRL, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @bmi160_write_conf_reg(%struct.regmap* %49, i32 %50, i32 %51, i32 %52, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %89

59:                                               ; preds = %42
  %60 = load %struct.regmap*, %struct.regmap** %7, align 8
  %61 = load i32, i32* @BMI160_REG_INT_LATCH, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @bmi160_write_conf_reg(%struct.regmap* %60, i32 %61, i32 %62, i32 %63, i64 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %89

70:                                               ; preds = %59
  %71 = load %struct.regmap*, %struct.regmap** %7, align 8
  %72 = load i32, i32* @BMI160_REG_INT_MAP, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @bmi160_write_conf_reg(%struct.regmap* %71, i32 %72, i32 %73, i32 %74, i64 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  switch i32 %80, label %83 [
    i32 129, label %81
    i32 128, label %82
  ]

81:                                               ; preds = %79
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %83

82:                                               ; preds = %79
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  br label %83

83:                                               ; preds = %79, %82, %81
  %84 = load %struct.device*, %struct.device** %13, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %83, %70
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %68, %57
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.device* @regmap_get_device(%struct.regmap*) #1

declare dso_local i32 @bmi160_write_conf_reg(%struct.regmap*, i32, i32, i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
