; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_pwm1_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_pwm1_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm63_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LM63_REG_CONFIG_FAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm63_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.lm63_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.lm63_data* %15, %struct.lm63_data** %10, align 8
  %16 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %17 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtoul(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %78

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = icmp ult i64 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = icmp ugt i64 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %78

34:                                               ; preds = %28
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, 2
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %40 = call i64 @lm63_lut_looks_bad(%struct.device* %38, %struct.lm63_data* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %78

45:                                               ; preds = %37, %34
  %46 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %47 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %46, i32 0, i32 1
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %50 = load i32, i32* @LM63_REG_CONFIG_FAN, align 4
  %51 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %49, i32 %50)
  %52 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %53 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %58 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, 32
  store i32 %60, i32* %58, align 8
  br label %66

61:                                               ; preds = %45
  %62 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %63 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, -33
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %68 = load i32, i32* @LM63_REG_CONFIG_FAN, align 4
  %69 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %70 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %67, i32 %68, i32 %71)
  %73 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %74 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %66, %42, %31, %23
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.lm63_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @lm63_lut_looks_bad(%struct.device*, %struct.lm63_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
