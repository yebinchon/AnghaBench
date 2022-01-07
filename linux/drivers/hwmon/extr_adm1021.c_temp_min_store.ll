; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_temp_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_temp_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1021_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@read_only = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.adm1021_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.adm1021_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.adm1021_data* %21, %struct.adm1021_data** %11, align 8
  %22 = load %struct.adm1021_data*, %struct.adm1021_data** %11, align 8
  %23 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %22, i32 0, i32 2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtol(i8* %25, i32 10, i64* %13)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %61

31:                                               ; preds = %4
  %32 = load i64, i64* %13, align 8
  %33 = sdiv i64 %32, 1000
  store i64 %33, i64* %13, align 8
  %34 = load %struct.adm1021_data*, %struct.adm1021_data** %11, align 8
  %35 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @clamp_val(i64 %37, i32 -128, i32 127)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = load %struct.adm1021_data*, %struct.adm1021_data** %11, align 8
  %42 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load i32, i32* @read_only, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %31
  %50 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ADM1021_REG_THYST_W(i32 %51)
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %50, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %31
  %56 = load %struct.adm1021_data*, %struct.adm1021_data** %11, align 8
  %57 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %29
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adm1021_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADM1021_REG_THYST_W(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
