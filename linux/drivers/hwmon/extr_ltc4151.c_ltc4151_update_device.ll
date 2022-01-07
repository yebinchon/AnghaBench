; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4151.c_ltc4151_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4151.c_ltc4151_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc4151_data = type { i32, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting ltc4151 update\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to read ADC value: error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ltc4151_data* (%struct.device*)* @ltc4151_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ltc4151_data* @ltc4151_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ltc4151_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ltc4151_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.ltc4151_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.ltc4151_data* %9, %struct.ltc4151_data** %3, align 8
  %10 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  %11 = getelementptr inbounds %struct.ltc4151_data, %struct.ltc4151_data* %10, i32 0, i32 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  store %struct.ltc4151_data* %13, %struct.ltc4151_data** %5, align 8
  %14 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  %15 = getelementptr inbounds %struct.ltc4151_data, %struct.ltc4151_data* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  %19 = getelementptr inbounds %struct.ltc4151_data, %struct.ltc4151_data* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 6
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i64 @time_after(i64 %17, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  %29 = getelementptr inbounds %struct.ltc4151_data, %struct.ltc4151_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.device*
  %36 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %67, %32
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  %40 = getelementptr inbounds %struct.ltc4151_data, %struct.ltc4151_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %37
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %2, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.ltc4151_data* @ERR_PTR(i32 %57)
  store %struct.ltc4151_data* %58, %struct.ltc4151_data** %5, align 8
  br label %77

59:                                               ; preds = %44
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  %62 = getelementptr inbounds %struct.ltc4151_data, %struct.ltc4151_data* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %37

70:                                               ; preds = %37
  %71 = load i64, i64* @jiffies, align 8
  %72 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  %73 = getelementptr inbounds %struct.ltc4151_data, %struct.ltc4151_data* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  %75 = getelementptr inbounds %struct.ltc4151_data, %struct.ltc4151_data* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %70, %27
  br label %77

77:                                               ; preds = %76, %53
  %78 = load %struct.ltc4151_data*, %struct.ltc4151_data** %3, align 8
  %79 = getelementptr inbounds %struct.ltc4151_data, %struct.ltc4151_data* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.ltc4151_data*, %struct.ltc4151_data** %5, align 8
  ret %struct.ltc4151_data* %81
}

declare dso_local %struct.ltc4151_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ltc4151_data* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
