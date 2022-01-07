; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4215.c_ltc4215_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4215.c_ltc4215_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc4215_data = type { i32, i32, i64, i64*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting ltc4215 update\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ltc4215_data* (%struct.device*)* @ltc4215_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ltc4215_data* @ltc4215_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ltc4215_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.ltc4215_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.ltc4215_data* %8, %struct.ltc4215_data** %3, align 8
  %9 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %10 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %9, i32 0, i32 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %13 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %17 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @HZ, align 4
  %20 = sdiv i32 %19, 10
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i64 @time_after(i64 %15, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %27 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %75, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %66, %30
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %37 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = call i32 @ARRAY_SIZE(i64* %38)
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp slt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %52 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 0, i64* %56, align 8
  br label %65

57:                                               ; preds = %41
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %60 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %58, i64* %64, align 8
  br label %65

65:                                               ; preds = %57, %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %34

69:                                               ; preds = %34
  %70 = load i64, i64* @jiffies, align 8
  %71 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %72 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %74 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %69, %25
  %76 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  %77 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.ltc4215_data*, %struct.ltc4215_data** %3, align 8
  ret %struct.ltc4215_data* %79
}

declare dso_local %struct.ltc4215_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
