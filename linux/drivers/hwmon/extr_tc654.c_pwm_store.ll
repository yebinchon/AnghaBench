; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tc654_data = type { i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TC654_REG_CONFIG_SDM = common dso_local global i32 0, align 4
@tc654_pwm_map = common dso_local global i32 0, align 4
@TC654_REG_CONFIG = common dso_local global i32 0, align 4
@TC654_REG_DUTY_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %17 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %16, i32 0, i32 3
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
  br label %88

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = icmp ugt i64 %26, 255
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %88

31:                                               ; preds = %25
  %32 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %33 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @TC654_REG_CONFIG_SDM, align 4
  %39 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %40 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %50

43:                                               ; preds = %31
  %44 = load i32, i32* @TC654_REG_CONFIG_SDM, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %47 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %37
  %51 = load i64, i64* %12, align 8
  %52 = load i32, i32* @tc654_pwm_map, align 4
  %53 = load i32, i32* @tc654_pwm_map, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = call i32 @find_closest(i64 %51, i32 %52, i32 %54)
  %56 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %57 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %59 = load i32, i32* @TC654_REG_CONFIG, align 4
  %60 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %61 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %58, i32 %59, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %74

67:                                               ; preds = %50
  %68 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %69 = load i32, i32* @TC654_REG_DUTY_CYCLE, align 4
  %70 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %71 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %68, i32 %69, i32 %72)
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %67, %66
  %75 = load %struct.tc654_data*, %struct.tc654_data** %10, align 8
  %76 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  br label %85

83:                                               ; preds = %74
  %84 = load i64, i64* %9, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i64 [ %82, %80 ], [ %84, %83 ]
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %28, %22
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.tc654_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_closest(i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
