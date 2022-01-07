; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_in_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_in_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7411_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@adt7411_in_alarm_reg = common dso_local global i32* null, align 8
@adt7411_in_alarm_bits = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64*)* @adt7411_read_in_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_read_in_alarm(%struct.device* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.adt7411_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.adt7411_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.adt7411_data* %12, %struct.adt7411_data** %8, align 8
  %13 = load %struct.adt7411_data*, %struct.adt7411_data** %8, align 8
  %14 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %17 = load i32*, i32** @adt7411_in_alarm_reg, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %16, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** @adt7411_in_alarm_bits, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %28, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %27, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.adt7411_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
