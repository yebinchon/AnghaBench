; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6650_data = type { i32, i32, i32*, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@tach_reg = common dso_local global i32* null, align 8
@MAX6650_REG_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max6650_data* (%struct.device*)* @max6650_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max6650_data* @max6650_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.max6650_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.max6650_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.max6650_data* %9, %struct.max6650_data** %3, align 8
  %10 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %11 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %10, i32 0, i32 6
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %14 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %13, i32 0, i32 4
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %18 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HZ, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @time_after(i64 %16, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %26 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %78, label %29

29:                                               ; preds = %24, %1
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %33 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32*, i32** @tach_reg, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %6, align 4
  br label %79

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %51 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @MAX6650_REG_ALARM, align 4
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %6, align 4
  br label %79

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %70 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i64, i64* @jiffies, align 8
  %74 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %75 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %74, i32 0, i32 5
  store i64 %73, i64* %75, align 8
  %76 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %77 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %67, %24
  br label %79

79:                                               ; preds = %78, %65, %46
  %80 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  %81 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %80, i32 0, i32 4
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = call %struct.max6650_data* @ERR_PTR(i32 %86)
  store %struct.max6650_data* %87, %struct.max6650_data** %3, align 8
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.max6650_data*, %struct.max6650_data** %3, align 8
  ret %struct.max6650_data* %89
}

declare dso_local %struct.max6650_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.max6650_data* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
