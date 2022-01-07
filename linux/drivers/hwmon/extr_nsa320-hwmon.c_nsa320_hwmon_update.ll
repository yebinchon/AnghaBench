; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nsa320-hwmon.c_nsa320_hwmon_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nsa320-hwmon.c_nsa320_hwmon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nsa320_hwmon = type { i32, i32, i64, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Read raw MCU data %08x\0A\00", align 1
@MAGIC_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Read invalid MCU data %08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nsa320_hwmon_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsa320_hwmon_update(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nsa320_hwmon*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.nsa320_hwmon* @dev_get_drvdata(%struct.device* %6)
  store %struct.nsa320_hwmon* %7, %struct.nsa320_hwmon** %5, align 8
  %8 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %9 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %12 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %16 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_after(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %85

25:                                               ; preds = %22, %1
  %26 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %27 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @gpiod_set_value(i32 %28, i32 1)
  %30 = call i32 @msleep(i32 100)
  store i32 0, i32* %3, align 4
  %31 = call i32 @BIT(i32 31)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %56, %25
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %37 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @gpiod_set_value(i32 %38, i32 0)
  %40 = call i32 @usleep_range(i32 100, i32 200)
  %41 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %42 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @gpiod_set_value(i32 %43, i32 1)
  %45 = call i32 @usleep_range(i32 100, i32 200)
  %46 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %47 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @gpiod_get_value(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %61 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @gpiod_set_value(i32 %62, i32 0)
  %64 = load %struct.device*, %struct.device** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = ashr i32 %67, 24
  %69 = load i32, i32* @MAGIC_NUMBER, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load %struct.device*, %struct.device** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %84

77:                                               ; preds = %59
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %80 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* @jiffies, align 8
  %82 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %83 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84, %22
  %86 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %5, align 8
  %87 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.nsa320_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
