; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max6650_data = type { i32, i32, i8*, i32, i8* }

@MAX6650_CFG_V12 = common dso_local global i32 0, align 4
@MAX6650_REG_DAC = common dso_local global i32 0, align 4
@max6650_pwm_modes = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MAX6650_REG_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @max6650_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6650_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.max6650_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.max6650_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.max6650_data* %15, %struct.max6650_data** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %17 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %105 [
    i32 130, label %20
    i32 133, label %66
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %62 [
    i32 128, label %22
    i32 129, label %44
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @clamp_val(i64 %23, i32 0, i32 255)
  %25 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %26 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX6650_CFG_V12, align 4
  %29 = and i32 %27, %28
  %30 = call i8* @pwm_to_dac(i32 %24, i32 %29)
  store i8* %30, i8** %13, align 8
  %31 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %32 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MAX6650_REG_DAC, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @i2c_smbus_write_byte_data(i32 %33, i32 %34, i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %65

40:                                               ; preds = %22
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %43 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  br label %65

44:                                               ; preds = %20
  %45 = load i64, i64* %10, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %10, align 8
  %49 = load i32*, i32** @max6650_pwm_modes, align 8
  %50 = call i64 @ARRAY_SIZE(i32* %49)
  %51 = icmp sge i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %65

55:                                               ; preds = %47
  %56 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %57 = load i32*, i32** @max6650_pwm_modes, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max6650_set_operating_mode(%struct.max6650_data* %56, i32 %60)
  store i32 %61, i32* %12, align 4
  br label %65

62:                                               ; preds = %20
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %62, %55, %52, %40, %39
  br label %108

66:                                               ; preds = %5
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %101 [
    i32 132, label %68
    i32 131, label %91
  ]

68:                                               ; preds = %66
  %69 = load i64, i64* %10, align 8
  switch i64 %69, label %74 [
    i64 1, label %70
    i64 2, label %71
    i64 4, label %72
    i64 8, label %73
  ]

70:                                               ; preds = %68
  store i8* null, i8** %13, align 8
  br label %77

71:                                               ; preds = %68
  store i8* inttoptr (i64 1 to i8*), i8** %13, align 8
  br label %77

72:                                               ; preds = %68
  store i8* inttoptr (i64 2 to i8*), i8** %13, align 8
  br label %77

73:                                               ; preds = %68
  store i8* inttoptr (i64 3 to i8*), i8** %13, align 8
  br label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %109

77:                                               ; preds = %73, %72, %71, %70
  %78 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %79 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MAX6650_REG_COUNT, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @i2c_smbus_write_byte_data(i32 %80, i32 %81, i8* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %104

87:                                               ; preds = %77
  %88 = load i8*, i8** %13, align 8
  %89 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %90 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  br label %104

91:                                               ; preds = %66
  %92 = load i64, i64* %10, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %104

97:                                               ; preds = %91
  %98 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @max6650_set_target(%struct.max6650_data* %98, i64 %99)
  store i32 %100, i32* %12, align 4
  br label %104

101:                                              ; preds = %66
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %97, %94, %87, %86
  br label %108

105:                                              ; preds = %5
  %106 = load i32, i32* @EOPNOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %105, %104, %65
  br label %109

109:                                              ; preds = %108, %74
  %110 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %111 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %110, i32 0, i32 1
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %12, align 4
  ret i32 %113
}

declare dso_local %struct.max6650_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @pwm_to_dac(i32, i32) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i8*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @max6650_set_operating_mode(%struct.max6650_data*, i32) #1

declare dso_local i32 @max6650_set_target(%struct.max6650_data*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
