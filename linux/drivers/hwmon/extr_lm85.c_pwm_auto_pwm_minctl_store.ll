; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_pwm_auto_pwm_minctl_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_pwm_auto_pwm_minctl_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm85_data = type { i32, %struct.TYPE_3__*, %struct.i2c_client* }
%struct.TYPE_3__ = type { i64 }
%struct.i2c_client = type { i32 }
%struct.TYPE_4__ = type { i32 }

@LM85_REG_AFAN_SPIKE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_auto_pwm_minctl_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_auto_pwm_minctl_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm85_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.lm85_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.lm85_data* %21, %struct.lm85_data** %11, align 8
  %22 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %23 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %22, i32 0, i32 2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtol(i8* %25, i32 10, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %75

31:                                               ; preds = %4
  %32 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %33 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i64, i64* %14, align 8
  %36 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %37 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i64 %35, i64* %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %44 = load i32, i32* @LM85_REG_AFAN_SPIKE1, align 4
  %45 = call i32 @lm85_read_value(%struct.i2c_client* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 32, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %52 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %31
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 32, %61
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %60, %31
  %66 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %67 = load i32, i32* @LM85_REG_AFAN_SPIKE1, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @lm85_write_value(%struct.i2c_client* %66, i32 %67, i32 %68)
  %70 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %71 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %65, %29
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm85_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm85_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm85_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
