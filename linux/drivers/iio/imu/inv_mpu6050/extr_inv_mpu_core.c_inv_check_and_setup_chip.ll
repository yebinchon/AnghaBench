; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_check_and_setup_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_check_and_setup_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inv_mpu6050_state = type { i64, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }

@hw_info = common dso_local global %struct.TYPE_4__* null, align 8
@INV_MPU6050_REG_WHOAMI = common dso_local global i32 0, align 4
@INV_NUM_PARTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"whoami mismatch got %#02x (%s)expected %#02hhx (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"invalid whoami %#02x expected %#02hhx (%s)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_H_RESET = common dso_local global i32 0, align 4
@INV_MPU6050_POWER_UP_TIME = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_PWR_ACCL_STBY = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_PWR_GYRO_STBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inv_mpu6050_state*)* @inv_check_and_setup_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_check_and_setup_chip(%struct.inv_mpu6050_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inv_mpu6050_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inv_mpu6050_state* %0, %struct.inv_mpu6050_state** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hw_info, align 8
  %8 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %9 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %10
  %12 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %13 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %12, i32 0, i32 3
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hw_info, align 8
  %15 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %16 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %22 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %21, i32 0, i32 1
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %22, align 8
  %23 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %24 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @INV_MPU6050_REG_WHOAMI, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %5)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %150

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %35 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %33, %38
  br i1 %39, label %40, label %105

40:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %78, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @INV_NUM_PARTS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hw_info, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %46, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %45
  %55 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %56 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @regmap_get_device(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hw_info, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %67 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %72 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %65, i32 %70, i32 %75)
  br label %81

77:                                               ; preds = %45
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %41

81:                                               ; preds = %54, %41
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @INV_NUM_PARTS, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %87 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @regmap_get_device(i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %92 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %97 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %95, i32 %100)
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %150

104:                                              ; preds = %81
  br label %105

105:                                              ; preds = %104, %32
  %106 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %107 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %110 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @INV_MPU6050_BIT_H_RESET, align 4
  %115 = call i32 @regmap_write(i32 %108, i32 %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %150

120:                                              ; preds = %105
  %121 = load i32, i32* @INV_MPU6050_POWER_UP_TIME, align 4
  %122 = call i32 @msleep(i32 %121)
  %123 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %124 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %123, i32 1)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %150

129:                                              ; preds = %120
  %130 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %131 = load i32, i32* @INV_MPU6050_BIT_PWR_ACCL_STBY, align 4
  %132 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %130, i32 0, i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %146

136:                                              ; preds = %129
  %137 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %138 = load i32, i32* @INV_MPU6050_BIT_PWR_GYRO_STBY, align 4
  %139 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %137, i32 0, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %146

143:                                              ; preds = %136
  %144 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %145 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %144, i32 0)
  store i32 %145, i32* %2, align 4
  br label %150

146:                                              ; preds = %142, %135
  %147 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %148 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %147, i32 0)
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %146, %143, %127, %118, %85, %30
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_get_device(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
