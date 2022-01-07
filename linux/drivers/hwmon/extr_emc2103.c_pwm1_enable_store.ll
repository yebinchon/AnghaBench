; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_pwm1_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_pwm1_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.emc2103_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@REG_FAN_CONF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.emc2103_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.emc2103_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.emc2103_data* %16, %struct.emc2103_data** %10, align 8
  %17 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %18 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtol(i8* %20, i32 10, i64* %12)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %71

26:                                               ; preds = %4
  %27 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %28 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i64, i64* %12, align 8
  switch i64 %30, label %37 [
    i64 0, label %31
    i64 3, label %34
  ]

31:                                               ; preds = %26
  %32 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %33 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %40

34:                                               ; preds = %26
  %35 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %36 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %40

37:                                               ; preds = %26
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %9, align 8
  br label %65

40:                                               ; preds = %34, %31
  %41 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %42 = load i32, i32* @REG_FAN_CONF1, align 4
  %43 = call i32 @read_u8_from_i2c(%struct.i2c_client* %41, i32 %42, i32* %13)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  br label %65

49:                                               ; preds = %40
  %50 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %51 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, 128
  store i32 %56, i32* %13, align 4
  br label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, -129
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %62 = load i32, i32* @REG_FAN_CONF1, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %46, %37
  %66 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %67 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %24
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.emc2103_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @read_u8_from_i2c(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
