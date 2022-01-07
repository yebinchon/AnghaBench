; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_type_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_type_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm95234_data = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LM95234_REG_REM_MODEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @type_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm95234_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.lm95234_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.lm95234_data* %15, %struct.lm95234_data** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %21 = call i32 @lm95234_update_device(%struct.lm95234_data* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %5, align 4
  br label %77

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtoul(i8* %27, i32 10, i64* %11)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %77

33:                                               ; preds = %26
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %77

42:                                               ; preds = %36, %33
  %43 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %44 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %51 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %61

54:                                               ; preds = %42
  %55 = load i32, i32* %12, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %58 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %63 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %65 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @LM95234_REG_REM_MODEL, align 4
  %68 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %69 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @i2c_smbus_write_byte_data(i32 %66, i32 %67, i32 %70)
  %72 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %73 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %61, %39, %31, %24
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.lm95234_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @lm95234_update_device(%struct.lm95234_data*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
