; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp421.c_tmp421_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp421.c_tmp421_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp421_data = type { i32, i32, i32, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TMP421_CONFIG_REG_1 = common dso_local global i32 0, align 4
@TMP421_TEMP_MSB = common dso_local global i32* null, align 8
@TMP421_TEMP_LSB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tmp421_data* (%struct.device*)* @tmp421_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tmp421_data* @tmp421_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tmp421_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.tmp421_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.tmp421_data* %7, %struct.tmp421_data** %3, align 8
  %8 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %9 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %8, i32 0, i32 6
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %12 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %11, i32 0, i32 4
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %16 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_after(i64 %14, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %26 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @TMP421_CONFIG_REG_1, align 4
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %30, i32 %31)
  %33 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %34 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %71, %29
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %38 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %35
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32*, i32** @TMP421_TEMP_MSB, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 %47)
  %49 = shl i32 %48, 8
  %50 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %51 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32*, i32** @TMP421_TEMP_LSB, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 %61)
  %63 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %64 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %62
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %41
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %35

74:                                               ; preds = %35
  %75 = load i64, i64* @jiffies, align 8
  %76 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %77 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %76, i32 0, i32 5
  store i64 %75, i64* %77, align 8
  %78 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %79 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %24
  %81 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  %82 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %81, i32 0, i32 4
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.tmp421_data*, %struct.tmp421_data** %3, align 8
  ret %struct.tmp421_data* %84
}

declare dso_local %struct.tmp421_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
