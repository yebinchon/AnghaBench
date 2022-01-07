; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht21.c_sht21_update_measurements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht21.c_sht21_update_measurements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sht21 = type { i32, i32, i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SHT21_TRIG_T_MEASUREMENT_HM = common dso_local global i32 0, align 4
@SHT21_TRIG_RH_MEASUREMENT_HM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sht21_update_measurements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht21_update_measurements(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sht21*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.sht21* @dev_get_drvdata(%struct.device* %6)
  store %struct.sht21* %7, %struct.sht21** %4, align 8
  %8 = load %struct.sht21*, %struct.sht21** %4, align 8
  %9 = getelementptr inbounds %struct.sht21, %struct.sht21* %8, i32 0, i32 5
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.sht21*, %struct.sht21** %4, align 8
  %12 = getelementptr inbounds %struct.sht21, %struct.sht21* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.sht21*, %struct.sht21** %4, align 8
  %16 = getelementptr inbounds %struct.sht21, %struct.sht21* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = sdiv i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_after(i64 %14, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.sht21*, %struct.sht21** %4, align 8
  %26 = getelementptr inbounds %struct.sht21, %struct.sht21* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = load i32, i32* @SHT21_TRIG_T_MEASUREMENT_HM, align 4
  %32 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %58

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @sht21_temp_ticks_to_millicelsius(i32 %37)
  %39 = load %struct.sht21*, %struct.sht21** %4, align 8
  %40 = getelementptr inbounds %struct.sht21, %struct.sht21* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = load i32, i32* @SHT21_TRIG_RH_MEASUREMENT_HM, align 4
  %43 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %58

47:                                               ; preds = %36
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @sht21_rh_ticks_to_per_cent_mille(i32 %48)
  %50 = load %struct.sht21*, %struct.sht21** %4, align 8
  %51 = getelementptr inbounds %struct.sht21, %struct.sht21* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @jiffies, align 8
  %53 = load %struct.sht21*, %struct.sht21** %4, align 8
  %54 = getelementptr inbounds %struct.sht21, %struct.sht21* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.sht21*, %struct.sht21** %4, align 8
  %56 = getelementptr inbounds %struct.sht21, %struct.sht21* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %47, %24
  br label %58

58:                                               ; preds = %57, %46, %35
  %59 = load %struct.sht21*, %struct.sht21** %4, align 8
  %60 = getelementptr inbounds %struct.sht21, %struct.sht21* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %3, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 0, %64 ], [ %66, %65 ]
  ret i32 %68
}

declare dso_local %struct.sht21* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @sht21_temp_ticks_to_millicelsius(i32) #1

declare dso_local i32 @sht21_rh_ticks_to_per_cent_mille(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
