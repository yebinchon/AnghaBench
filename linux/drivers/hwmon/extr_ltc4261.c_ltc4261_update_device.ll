; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4261.c_ltc4261_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4261.c_ltc4261_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc4261_data = type { i32, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to read ADC value: error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ltc4261_data* (%struct.device*)* @ltc4261_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ltc4261_data* @ltc4261_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ltc4261_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ltc4261_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.ltc4261_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.ltc4261_data* %9, %struct.ltc4261_data** %3, align 8
  %10 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %11 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %10, i32 0, i32 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  store %struct.ltc4261_data* %13, %struct.ltc4261_data** %5, align 8
  %14 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %15 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %19 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i64 @time_after(i64 %17, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %29 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %27, %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %36 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %33
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load %struct.device*, %struct.device** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.ltc4261_data* @ERR_PTR(i32 %53)
  store %struct.ltc4261_data* %54, %struct.ltc4261_data** %5, align 8
  %55 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %56 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %75

57:                                               ; preds = %40
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %60 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load i64, i64* @jiffies, align 8
  %70 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %71 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %73 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %27
  br label %75

75:                                               ; preds = %74, %49
  %76 = load %struct.ltc4261_data*, %struct.ltc4261_data** %3, align 8
  %77 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.ltc4261_data*, %struct.ltc4261_data** %5, align 8
  ret %struct.ltc4261_data* %79
}

declare dso_local %struct.ltc4261_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.ltc4261_data* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
