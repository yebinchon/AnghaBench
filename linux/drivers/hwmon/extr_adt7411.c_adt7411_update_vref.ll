; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_update_vref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_update_vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7411_data = type { i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ADT7411_REG_CFG3 = common dso_local global i32 0, align 4
@ADT7411_CFG3_REF_VDD = common dso_local global i32 0, align 4
@hwmon_in_input = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @adt7411_update_vref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_update_vref(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.adt7411_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.adt7411_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.adt7411_data* %8, %struct.adt7411_data** %4, align 8
  %9 = load %struct.adt7411_data*, %struct.adt7411_data** %4, align 8
  %10 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %9, i32 0, i32 2
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.adt7411_data*, %struct.adt7411_data** %4, align 8
  %14 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @time_after_eq(i64 %12, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = load i32, i32* @ADT7411_REG_CFG3, align 4
  %21 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ADT7411_CFG3_REF_VDD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load i32, i32* @hwmon_in_input, align 4
  %34 = load %struct.adt7411_data*, %struct.adt7411_data** %4, align 8
  %35 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %34, i32 0, i32 0
  %36 = call i32 @adt7411_read_in_vdd(%struct.device* %32, i32 %33, i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %52

41:                                               ; preds = %31
  br label %45

42:                                               ; preds = %26
  %43 = load %struct.adt7411_data*, %struct.adt7411_data** %4, align 8
  %44 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %43, i32 0, i32 0
  store i32 2250, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i64, i64* @HZ, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.adt7411_data*, %struct.adt7411_data** %4, align 8
  %50 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %1
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %39, %24
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.adt7411_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @adt7411_read_in_vdd(%struct.device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
