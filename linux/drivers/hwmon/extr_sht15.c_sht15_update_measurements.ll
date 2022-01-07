; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_update_measurements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_update_measurements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i32, i32, i64, i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SHT15_READING_HUMID = common dso_local global i32 0, align 4
@SHT15_MEASURE_RH = common dso_local global i32 0, align 4
@SHT15_READING_TEMP = common dso_local global i32 0, align 4
@SHT15_MEASURE_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sht15_data*)* @sht15_update_measurements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_update_measurements(%struct.sht15_data* %0) #0 {
  %2 = alloca %struct.sht15_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @HZ, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %7 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %11 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = call i64 @time_after(i64 %9, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %20 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @SHT15_READING_HUMID, align 4
  %25 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %26 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %28 = load i32, i32* @SHT15_MEASURE_RH, align 4
  %29 = call i32 @sht15_measurement(%struct.sht15_data* %27, i32 %28, i32 160)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %50

33:                                               ; preds = %23
  %34 = load i32, i32* @SHT15_READING_TEMP, align 4
  %35 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %36 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %38 = load i32, i32* @SHT15_MEASURE_TEMP, align 4
  %39 = call i32 @sht15_measurement(%struct.sht15_data* %37, i32 %38, i32 400)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %50

43:                                               ; preds = %33
  %44 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %45 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %48 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %18
  br label %50

50:                                               ; preds = %49, %42, %32
  %51 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %52 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @sht15_measurement(%struct.sht15_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
