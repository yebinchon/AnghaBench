; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_pwm1_freq_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_pwm1_freq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7470_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADT7470_CFG_LF = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i64 0, align 8
@adt7470_freq_map = common dso_local global i32 0, align 4
@ADT7470_REG_CFG = common dso_local global i32 0, align 4
@ADT7470_REG_CFG_2 = common dso_local global i32 0, align 4
@ADT7470_FREQ_MASK = common dso_local global i8 0, align 1
@ADT7470_FREQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_freq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm1_freq_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adt7470_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.adt7470_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.adt7470_data* %17, %struct.adt7470_data** %10, align 8
  %18 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %19 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %18, i32 0, i32 1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load i8, i8* @ADT7470_CFG_LF, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @kstrtol(i8* %23, i32 10, i64* %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %80

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* @adt7470_freq_map, align 4
  %32 = load i32, i32* @adt7470_freq_map, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i32 @find_closest(i64 %30, i32 %31, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp sge i32 %35, 8
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  %39 = sub nsw i32 %38, 8
  store i32 %39, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %42 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %45 = load i32, i32* @ADT7470_REG_CFG, align 4
  %46 = call zeroext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %44, i32 %45)
  store i8 %46, i8* %15, align 1
  %47 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %48 = load i32, i32* @ADT7470_REG_CFG, align 4
  %49 = load i8, i8* %15, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @ADT7470_CFG_LF, align 1
  %52 = zext i8 %51 to i32
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  %55 = load i32, i32* %14, align 4
  %56 = or i32 %54, %55
  %57 = trunc i32 %56 to i8
  %58 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %47, i32 %48, i8 zeroext %57)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %60 = load i32, i32* @ADT7470_REG_CFG_2, align 4
  %61 = call zeroext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %59, i32 %60)
  store i8 %61, i8* %15, align 1
  %62 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %63 = load i32, i32* @ADT7470_REG_CFG_2, align 4
  %64 = load i8, i8* %15, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @ADT7470_FREQ_MASK, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, -1
  %69 = and i32 %65, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @ADT7470_FREQ_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = trunc i32 %73 to i8
  %75 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %62, i32 %63, i8 zeroext %74)
  %76 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %77 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %40, %26
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

declare dso_local %struct.adt7470_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @find_closest(i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i8 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
