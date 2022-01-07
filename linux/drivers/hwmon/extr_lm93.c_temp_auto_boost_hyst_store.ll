; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_temp_auto_boost_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_temp_auto_boost_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm93_data = type { i32, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@LM93_REG_SFC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_auto_boost_hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_auto_boost_hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm93_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.lm93_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.lm93_data* %20, %struct.lm93_data** %11, align 8
  %21 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %22 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %21, i32 0, i32 3
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtoul(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %81

30:                                               ; preds = %4
  %31 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %32 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %31, i32 0, i32 2
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %35 = load i32, i32* @LM93_REG_SFC2, align 4
  %36 = call i32 @lm93_read_byte(%struct.i2c_client* %34, i32 %35)
  %37 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %38 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 2
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 16, i32 32
  %43 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %44 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %48 = load i32, i32* @LM93_REG_SFC2, align 4
  %49 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %50 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @lm93_write_byte(%struct.i2c_client* %47, i32 %48, i32 %51)
  %53 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @LM93_AUTO_BOOST_HYST_TO_REG(%struct.lm93_data* %53, i64 %54, i32 %55, i32 1)
  %57 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %58 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sdiv i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %56, i32* %63, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @LM93_REG_BOOST_HYST(i32 %65)
  %67 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %68 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sdiv i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lm93_write_byte(%struct.i2c_client* %64, i32 %66, i32 %74)
  %76 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %77 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %30, %28
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm93_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM93_AUTO_BOOST_HYST_TO_REG(%struct.lm93_data*, i64, i32, i32) #1

declare dso_local i32 @LM93_REG_BOOST_HYST(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
