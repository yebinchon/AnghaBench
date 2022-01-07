; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu3050 = type { i32, i32, i32 }

@MPU3050_PWR_MGM = common dso_local global i32 0, align 4
@MPU3050_PWR_MGM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error putting to sleep\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"error disabling regulators\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpu3050*)* @mpu3050_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_power_down(%struct.mpu3050* %0) #0 {
  %2 = alloca %struct.mpu3050*, align 8
  %3 = alloca i32, align 4
  store %struct.mpu3050* %0, %struct.mpu3050** %2, align 8
  %4 = load %struct.mpu3050*, %struct.mpu3050** %2, align 8
  %5 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MPU3050_PWR_MGM, align 4
  %8 = load i32, i32* @MPU3050_PWR_MGM_SLEEP, align 4
  %9 = load i32, i32* @MPU3050_PWR_MGM_SLEEP, align 4
  %10 = call i32 @regmap_update_bits(i32 %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mpu3050*, %struct.mpu3050** %2, align 8
  %15 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.mpu3050*, %struct.mpu3050** %2, align 8
  %20 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load %struct.mpu3050*, %struct.mpu3050** %2, align 8
  %24 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regulator_bulk_disable(i32 %22, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.mpu3050*, %struct.mpu3050** %2, align 8
  %31 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %18
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
