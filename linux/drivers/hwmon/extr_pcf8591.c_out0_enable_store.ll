; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pcf8591.c_out0_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pcf8591.c_out0_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.pcf8591_data = type { i32, i32 }

@PCF8591_CONTROL_AOEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @out0_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @out0_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.pcf8591_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.pcf8591_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.pcf8591_data* %17, %struct.pcf8591_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtoul(i8* %18, i32 10, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %54

24:                                               ; preds = %4
  %25 = load %struct.pcf8591_data*, %struct.pcf8591_data** %11, align 8
  %26 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* @PCF8591_CONTROL_AOEF, align 4
  %32 = load %struct.pcf8591_data*, %struct.pcf8591_data** %11, align 8
  %33 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %43

36:                                               ; preds = %24
  %37 = load i32, i32* @PCF8591_CONTROL_AOEF, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.pcf8591_data*, %struct.pcf8591_data** %11, align 8
  %40 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %45 = load %struct.pcf8591_data*, %struct.pcf8591_data** %11, align 8
  %46 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %44, i32 %47)
  %49 = load %struct.pcf8591_data*, %struct.pcf8591_data** %11, align 8
  %50 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %43, %22
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.pcf8591_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
