; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ina209_data = type { i32, i32, i64, i64*, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ina209_data* (%struct.device*)* @ina209_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ina209_data* @ina209_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ina209_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ina209_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.ina209_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.ina209_data* %9, %struct.ina209_data** %3, align 8
  %10 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %11 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %10, i32 0, i32 5
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  store %struct.ina209_data* %13, %struct.ina209_data** %5, align 8
  %14 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %15 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %18 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %24 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %27 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i64 @time_after(i64 %22, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %21, %1
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %36 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %35, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @ARRAY_SIZE(i64* %37)
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @i2c_smbus_read_word_swapped(%struct.i2c_client* %41, i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = call %struct.ina209_data* @ERR_PTR(i64 %47)
  store %struct.ina209_data* %48, %struct.ina209_data** %5, align 8
  br label %67

49:                                               ; preds = %40
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %52 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %50, i64* %56, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %63 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %65 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %21
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.ina209_data*, %struct.ina209_data** %3, align 8
  %69 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.ina209_data*, %struct.ina209_data** %5, align 8
  ret %struct.ina209_data* %71
}

declare dso_local %struct.ina209_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local %struct.ina209_data* @ERR_PTR(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
