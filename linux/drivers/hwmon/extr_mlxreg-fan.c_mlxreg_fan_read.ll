; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mlxreg_fan = type { %struct.TYPE_2__, i32, i32, i32, %struct.mlxreg_fan_tacho* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxreg_fan_tacho = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64, i32, i64*)* @mlxreg_fan_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_fan_read(%struct.device* %0, i32 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.mlxreg_fan*, align 8
  %13 = alloca %struct.mlxreg_fan_tacho*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.mlxreg_fan* @dev_get_drvdata(%struct.device* %16)
  store %struct.mlxreg_fan* %17, %struct.mlxreg_fan** %12, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %94 [
    i32 132, label %19
    i32 129, label %72
  ]

19:                                               ; preds = %5
  %20 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  %21 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %20, i32 0, i32 4
  %22 = load %struct.mlxreg_fan_tacho*, %struct.mlxreg_fan_tacho** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlxreg_fan_tacho, %struct.mlxreg_fan_tacho* %22, i64 %24
  store %struct.mlxreg_fan_tacho* %25, %struct.mlxreg_fan_tacho** %13, align 8
  %26 = load i64, i64* %9, align 8
  switch i64 %26, label %68 [
    i64 130, label %27
    i64 131, label %49
  ]

27:                                               ; preds = %19
  %28 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  %29 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlxreg_fan_tacho*, %struct.mlxreg_fan_tacho** %13, align 8
  %32 = getelementptr inbounds %struct.mlxreg_fan_tacho, %struct.mlxreg_fan_tacho* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regmap_read(i32 %30, i32 %33, i64* %14)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %6, align 4
  br label %98

39:                                               ; preds = %27
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  %42 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  %45 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @MLXREG_FAN_GET_RPM(i64 %40, i32 %43, i32 %46)
  %48 = load i64*, i64** %11, align 8
  store i64 %47, i64* %48, align 8
  br label %71

49:                                               ; preds = %19
  %50 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  %51 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlxreg_fan_tacho*, %struct.mlxreg_fan_tacho** %13, align 8
  %54 = getelementptr inbounds %struct.mlxreg_fan_tacho, %struct.mlxreg_fan_tacho* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regmap_read(i32 %52, i32 %55, i64* %14)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %98

61:                                               ; preds = %49
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.mlxreg_fan_tacho*, %struct.mlxreg_fan_tacho** %13, align 8
  %64 = getelementptr inbounds %struct.mlxreg_fan_tacho, %struct.mlxreg_fan_tacho* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @MLXREG_FAN_GET_FAULT(i64 %62, i32 %65)
  %67 = load i64*, i64** %11, align 8
  store i64 %66, i64* %67, align 8
  br label %71

68:                                               ; preds = %19
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %98

71:                                               ; preds = %61, %39
  br label %97

72:                                               ; preds = %5
  %73 = load i64, i64* %9, align 8
  switch i64 %73, label %90 [
    i64 128, label %74
  ]

74:                                               ; preds = %72
  %75 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  %76 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  %79 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @regmap_read(i32 %77, i32 %81, i64* %14)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %98

87:                                               ; preds = %74
  %88 = load i64, i64* %14, align 8
  %89 = load i64*, i64** %11, align 8
  store i64 %88, i64* %89, align 8
  br label %93

90:                                               ; preds = %72
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %98

93:                                               ; preds = %87
  br label %97

94:                                               ; preds = %5
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %98

97:                                               ; preds = %93, %71
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %94, %90, %85, %68, %59, %37
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local %struct.mlxreg_fan* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i64 @MLXREG_FAN_GET_RPM(i64, i32, i32) #1

declare dso_local i64 @MLXREG_FAN_GET_FAULT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
