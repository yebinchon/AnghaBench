; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.mlxreg_fan* }
%struct.mlxreg_fan = type { i64*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MLXREG_FAN_SPEED_MIN = common dso_local global i64 0, align 8
@MLXREG_FAN_SPEED_MAX = common dso_local global i64 0, align 8
@MLXREG_FAN_MAX_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to query PWM duty\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to write PWM duty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @mlxreg_fan_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_fan_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlxreg_fan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %12 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %11, i32 0, i32 0
  %13 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  store %struct.mlxreg_fan* %13, %struct.mlxreg_fan** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @MLXREG_FAN_SPEED_MIN, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @MLXREG_FAN_SPEED_MAX, align 8
  %20 = icmp ule i64 %18, %19
  br i1 %20, label %21, label %87

21:                                               ; preds = %17
  %22 = load i64, i64* @MLXREG_FAN_MAX_STATE, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %38, %21
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %5, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %33 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 %31, i64* %37, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %25

41:                                               ; preds = %25
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %58, %41
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @MLXREG_FAN_MAX_STATE, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %53 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %51, i64* %57, align 8
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %44

61:                                               ; preds = %44
  %62 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %63 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %66 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regmap_read(i32 %64, i32 %68, i32* %8)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %74 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %120

78:                                               ; preds = %61
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @MLXREG_FAN_PWM_DUTY2STATE(i32 %79)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %120

85:                                               ; preds = %78
  %86 = load i64, i64* %7, align 8
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %85, %17, %2
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @MLXREG_FAN_MAX_STATE, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %120

94:                                               ; preds = %87
  %95 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %96 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %5, align 8
  %101 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %102 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %105 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @MLXREG_FAN_PWM_STATE2DUTY(i64 %108)
  %110 = call i32 @regmap_write(i32 %103, i32 %107, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %94
  %114 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %115 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %120

119:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %113, %91, %84, %72
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @MLXREG_FAN_PWM_DUTY2STATE(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @MLXREG_FAN_PWM_STATE2DUTY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
