; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_menf21bmc_hwmon.c_menf21bmc_hwmon_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_menf21bmc_hwmon.c_menf21bmc_hwmon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menf21bmc_hwmon = type { i32, i32*, i64, i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@BMC_VOLT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.menf21bmc_hwmon* (%struct.device*)* @menf21bmc_hwmon_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.menf21bmc_hwmon* @menf21bmc_hwmon_update(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.menf21bmc_hwmon*, align 8
  %6 = alloca %struct.menf21bmc_hwmon*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.menf21bmc_hwmon* @dev_get_drvdata(%struct.device* %7)
  store %struct.menf21bmc_hwmon* %8, %struct.menf21bmc_hwmon** %5, align 8
  %9 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  store %struct.menf21bmc_hwmon* %9, %struct.menf21bmc_hwmon** %6, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %12 = getelementptr inbounds %struct.menf21bmc_hwmon, %struct.menf21bmc_hwmon* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HZ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @time_after(i64 %10, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %20 = getelementptr inbounds %struct.menf21bmc_hwmon, %struct.menf21bmc_hwmon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %18, %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @BMC_VOLT_COUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %30 = getelementptr inbounds %struct.menf21bmc_hwmon, %struct.menf21bmc_hwmon* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @IDX_TO_VOLT_INP_CMD(i32 %32)
  %34 = call i32 @i2c_smbus_read_word_data(i32 %31, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = call %struct.menf21bmc_hwmon* @ERR_PTR(i32 %38)
  store %struct.menf21bmc_hwmon* %39, %struct.menf21bmc_hwmon** %6, align 8
  br label %58

40:                                               ; preds = %28
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %43 = getelementptr inbounds %struct.menf21bmc_hwmon, %struct.menf21bmc_hwmon* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %24

51:                                               ; preds = %24
  %52 = load i64, i64* @jiffies, align 8
  %53 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %54 = getelementptr inbounds %struct.menf21bmc_hwmon, %struct.menf21bmc_hwmon* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %5, align 8
  %56 = getelementptr inbounds %struct.menf21bmc_hwmon, %struct.menf21bmc_hwmon* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %18
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.menf21bmc_hwmon*, %struct.menf21bmc_hwmon** %6, align 8
  ret %struct.menf21bmc_hwmon* %59
}

declare dso_local %struct.menf21bmc_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

declare dso_local i32 @IDX_TO_VOLT_INP_CMD(i32) #1

declare dso_local %struct.menf21bmc_hwmon* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
