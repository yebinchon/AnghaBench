; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_beep_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_beep_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gl520_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GL520_REG_BEEP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @beep_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beep_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gl520_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.gl520_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.gl520_data* %16, %struct.gl520_data** %10, align 8
  %17 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %18 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtoul(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %75

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = and i64 %31, -2
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %75

37:                                               ; preds = %30
  %38 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %39 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %42 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %43 = call i32 @gl520_read_value(%struct.i2c_client* %41, i32 %42)
  %44 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %45 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = shl i32 1, %49
  %51 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %52 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %63

55:                                               ; preds = %37
  %56 = load i32, i32* %12, align 4
  %57 = shl i32 1, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %60 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %65 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %66 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %67 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @gl520_write_value(%struct.i2c_client* %64, i32 %65, i32 %68)
  %70 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %71 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %63, %34, %28
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.gl520_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
