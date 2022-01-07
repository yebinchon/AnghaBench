; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_temp_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_temp_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7411_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADT7411_REG_STAT_1 = common dso_local global i32 0, align 4
@ADT7411_STAT_1_EXT_TEMP_LOW = common dso_local global i32 0, align 4
@ADT7411_STAT_1_INT_TEMP_LOW = common dso_local global i32 0, align 4
@ADT7411_STAT_1_EXT_TEMP_HIGH_AIN1 = common dso_local global i32 0, align 4
@ADT7411_STAT_1_INT_TEMP_HIGH = common dso_local global i32 0, align 4
@ADT7411_STAT_1_EXT_TEMP_FAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @adt7411_read_temp_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_read_temp_alarm(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.adt7411_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.adt7411_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.adt7411_data* %15, %struct.adt7411_data** %10, align 8
  %16 = load %struct.adt7411_data*, %struct.adt7411_data** %10, align 8
  %17 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %16, i32 0, i32 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %20 = load i32, i32* @ADT7411_REG_STAT_1, align 4
  %21 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %61

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %48 [
    i32 128, label %28
    i32 129, label %37
    i32 130, label %46
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @ADT7411_STAT_1_EXT_TEMP_LOW, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ADT7411_STAT_1_INT_TEMP_LOW, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %13, align 4
  br label %51

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @ADT7411_STAT_1_EXT_TEMP_HIGH_AIN1, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @ADT7411_STAT_1_INT_TEMP_HIGH, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %13, align 4
  br label %51

46:                                               ; preds = %26
  %47 = load i32, i32* @ADT7411_STAT_1_EXT_TEMP_FAULT, align 4
  store i32 %47, i32* %13, align 4
  br label %51

48:                                               ; preds = %26
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %61

51:                                               ; preds = %46, %44, %35
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %51, %48, %24
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.adt7411_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
