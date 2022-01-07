; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmi160_data = type { i32 }
%struct.device = type { i32 }

@BMI160_REG_CMD = common dso_local global i32 0, align 4
@BMI160_CMD_SOFTRESET = common dso_local global i32 0, align 4
@BMI160_SOFTRESET_USLEEP = common dso_local global i64 0, align 8
@BMI160_REG_DUMMY = common dso_local global i32 0, align 4
@BMI160_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error reading chip id\0A\00", align 1
@BMI160_CHIP_ID_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Wrong chip id, got %x expected %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BMI160_ACCEL = common dso_local global i32 0, align 4
@BMI160_GYRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmi160_data*, i32)* @bmi160_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmi160_chip_init(%struct.bmi160_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmi160_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.bmi160_data* %0, %struct.bmi160_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bmi160_data*, %struct.bmi160_data** %4, align 8
  %10 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device* @regmap_get_device(i32 %11)
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.bmi160_data*, %struct.bmi160_data** %4, align 8
  %14 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BMI160_REG_CMD, align 4
  %17 = load i32, i32* @BMI160_CMD_SOFTRESET, align 4
  %18 = call i32 @regmap_write(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %81

23:                                               ; preds = %2
  %24 = load i64, i64* @BMI160_SOFTRESET_USLEEP, align 8
  %25 = load i64, i64* @BMI160_SOFTRESET_USLEEP, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @usleep_range(i64 %24, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.bmi160_data*, %struct.bmi160_data** %4, align 8
  %32 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BMI160_REG_DUMMY, align 4
  %35 = call i32 @regmap_read(i32 %33, i32 %34, i32* %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %81

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.bmi160_data*, %struct.bmi160_data** %4, align 8
  %43 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BMI160_REG_CHIP_ID, align 4
  %46 = call i32 @regmap_read(i32 %44, i32 %45, i32* %7)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %81

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @BMI160_CHIP_ID_VAL, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @BMI160_CHIP_ID_VAL, align 4
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %81

64:                                               ; preds = %53
  %65 = load %struct.bmi160_data*, %struct.bmi160_data** %4, align 8
  %66 = load i32, i32* @BMI160_ACCEL, align 4
  %67 = call i32 @bmi160_set_mode(%struct.bmi160_data* %65, i32 %66, i32 1)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %81

72:                                               ; preds = %64
  %73 = load %struct.bmi160_data*, %struct.bmi160_data** %4, align 8
  %74 = load i32, i32* @BMI160_GYRO, align 4
  %75 = call i32 @bmi160_set_mode(%struct.bmi160_data* %73, i32 %74, i32 1)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %78, %70, %57, %49, %38, %21
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @bmi160_set_mode(%struct.bmi160_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
