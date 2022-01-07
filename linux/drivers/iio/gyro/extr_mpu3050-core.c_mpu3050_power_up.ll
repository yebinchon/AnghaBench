; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu3050 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"cannot enable regulators\0A\00", align 1
@MPU3050_PWR_MGM = common dso_local global i32 0, align 4
@MPU3050_PWR_MGM_SLEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error setting power mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpu3050*)* @mpu3050_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_power_up(%struct.mpu3050* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpu3050*, align 8
  %4 = alloca i32, align 4
  store %struct.mpu3050* %0, %struct.mpu3050** %3, align 8
  %5 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %6 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %10 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regulator_bulk_enable(i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %17 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = call i32 @msleep(i32 200)
  %23 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %24 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MPU3050_PWR_MGM, align 4
  %27 = load i32, i32* @MPU3050_PWR_MGM_SLEEP, align 4
  %28 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %33 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %21
  %38 = call i32 @usleep_range(i32 10000, i32 20000)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %31, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
