; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl372_state = type { i32, i32 }

@ADXL372_DEVID = common dso_local global i32 0, align 4
@ADXL372_DEVID_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid chip id %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ADXL372_RESET = common dso_local global i32 0, align 4
@ADXL372_RESET_CODE = common dso_local global i32 0, align 4
@ADXL372_STANDBY = common dso_local global i32 0, align 4
@ADXL372_ACTIVITY = common dso_local global i32 0, align 4
@ADXL372_INACTIVITY = common dso_local global i32 0, align 4
@ADXL372_LOOPED = common dso_local global i32 0, align 4
@ADXL372_ODR_6400HZ = common dso_local global i32 0, align 4
@ADXL372_BW_3200HZ = common dso_local global i32 0, align 4
@ADXL372_FULL_BW_MEASUREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adxl372_state*)* @adxl372_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_setup(%struct.adxl372_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adxl372_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adxl372_state* %0, %struct.adxl372_state** %3, align 8
  %6 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %7 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ADXL372_DEVID, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %104

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ADXL372_DEVID_VAL, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %21 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %104

27:                                               ; preds = %15
  %28 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %29 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ADXL372_RESET, align 4
  %32 = load i32, i32* @ADXL372_RESET_CODE, align 4
  %33 = call i32 @regmap_write(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %104

38:                                               ; preds = %27
  %39 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %40 = load i32, i32* @ADXL372_STANDBY, align 4
  %41 = call i32 @adxl372_set_op_mode(%struct.adxl372_state* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %104

46:                                               ; preds = %38
  %47 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %48 = load i32, i32* @ADXL372_ACTIVITY, align 4
  %49 = call i32 @adxl372_set_activity_threshold(%struct.adxl372_state* %47, i32 %48, i32 1, i32 1, i32 1000)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %104

54:                                               ; preds = %46
  %55 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %56 = load i32, i32* @ADXL372_INACTIVITY, align 4
  %57 = call i32 @adxl372_set_activity_threshold(%struct.adxl372_state* %55, i32 %56, i32 1, i32 1, i32 100)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %104

62:                                               ; preds = %54
  %63 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %64 = load i32, i32* @ADXL372_LOOPED, align 4
  %65 = call i32 @adxl372_set_act_proc_mode(%struct.adxl372_state* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %104

70:                                               ; preds = %62
  %71 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %72 = load i32, i32* @ADXL372_ODR_6400HZ, align 4
  %73 = call i32 @adxl372_set_odr(%struct.adxl372_state* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %104

78:                                               ; preds = %70
  %79 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %80 = load i32, i32* @ADXL372_BW_3200HZ, align 4
  %81 = call i32 @adxl372_set_bandwidth(%struct.adxl372_state* %79, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %104

86:                                               ; preds = %78
  %87 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %88 = call i32 @adxl372_set_activity_time_ms(%struct.adxl372_state* %87, i32 1)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %104

93:                                               ; preds = %86
  %94 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %95 = call i32 @adxl372_set_inactivity_time_ms(%struct.adxl372_state* %94, i32 10000)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %104

100:                                              ; preds = %93
  %101 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %102 = load i32, i32* @ADXL372_FULL_BW_MEASUREMENT, align 4
  %103 = call i32 @adxl372_set_op_mode(%struct.adxl372_state* %101, i32 %102)
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %98, %91, %84, %76, %68, %60, %52, %44, %36, %19, %13
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @adxl372_set_op_mode(%struct.adxl372_state*, i32) #1

declare dso_local i32 @adxl372_set_activity_threshold(%struct.adxl372_state*, i32, i32, i32, i32) #1

declare dso_local i32 @adxl372_set_act_proc_mode(%struct.adxl372_state*, i32) #1

declare dso_local i32 @adxl372_set_odr(%struct.adxl372_state*, i32) #1

declare dso_local i32 @adxl372_set_bandwidth(%struct.adxl372_state*, i32) #1

declare dso_local i32 @adxl372_set_activity_time_ms(%struct.adxl372_state*, i32) #1

declare dso_local i32 @adxl372_set_inactivity_time_ms(%struct.adxl372_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
