; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_analog_out_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_analog_out_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.thmc50_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@THMC50_REG_ANALOG_OUT = common dso_local global i32 0, align 4
@THMC50_REG_CONF = common dso_local global i32 0, align 4
@THMC50_REG_CONF_nFANOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @analog_out_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analog_out_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.thmc50_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.thmc50_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.thmc50_data* %16, %struct.thmc50_data** %10, align 8
  %17 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %18 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 10, i64* %13)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %66

26:                                               ; preds = %4
  %27 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %28 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @clamp_val(i64 %30, i32 0, i32 255)
  %32 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %33 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %35 = load i32, i32* @THMC50_REG_ANALOG_OUT, align 4
  %36 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %37 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %34, i32 %35, i32 %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %41 = load i32, i32* @THMC50_REG_CONF, align 4
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %44 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %26
  %48 = load i32, i32* @THMC50_REG_CONF_nFANOFF, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %56

52:                                               ; preds = %26
  %53 = load i32, i32* @THMC50_REG_CONF_nFANOFF, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %58 = load i32, i32* @THMC50_REG_CONF, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %57, i32 %58, i32 %59)
  %61 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %62 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %56, %24
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.thmc50_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
