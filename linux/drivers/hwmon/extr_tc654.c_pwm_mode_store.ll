; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_pwm_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_pwm_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tc654_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TC654_REG_CONFIG_DUTYC = common dso_local global i32 0, align 4
@TC654_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tc654_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.tc654_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.tc654_data* %15, %struct.tc654_data** %10, align 8
  %16 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %17 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtoul(i8* %19, i32 10, i64* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %73

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %73

34:                                               ; preds = %28, %25
  %35 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %36 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* @TC654_REG_CONFIG_DUTYC, align 4
  %42 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %43 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %53

46:                                               ; preds = %34
  %47 = load i32, i32* @TC654_REG_CONFIG_DUTYC, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %50 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %40
  %54 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %55 = load i32, i32* @TC654_REG_CONFIG, align 4
  %56 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %57 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %54, i32 %55, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %61 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  br label %70

68:                                               ; preds = %53
  %69 = load i64, i64* %9, align 8
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i64 [ %67, %65 ], [ %69, %68 ]
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %31, %22
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.tc654_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
