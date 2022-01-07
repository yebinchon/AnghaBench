; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_set_samples.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_set_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.pmbus_samples_reg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pmbus_data = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pmbus_set_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmbus_set_samples(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.pmbus_samples_reg*, align 8
  %14 = alloca %struct.pmbus_data*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.i2c_client* @to_i2c_client(i32 %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %12, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.pmbus_samples_reg* @to_samples_reg(%struct.device_attribute* %19)
  store %struct.pmbus_samples_reg* %20, %struct.pmbus_samples_reg** %13, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %22 = call %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.pmbus_data* %22, %struct.pmbus_data** %14, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @kstrtol(i8* %23, i32 0, i64* %11)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %55

29:                                               ; preds = %4
  %30 = load %struct.pmbus_data*, %struct.pmbus_data** %14, align 8
  %31 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %34 = load %struct.pmbus_samples_reg*, %struct.pmbus_samples_reg** %13, align 8
  %35 = getelementptr inbounds %struct.pmbus_samples_reg, %struct.pmbus_samples_reg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pmbus_samples_reg*, %struct.pmbus_samples_reg** %13, align 8
  %38 = getelementptr inbounds %struct.pmbus_samples_reg, %struct.pmbus_samples_reg* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @_pmbus_write_word_data(%struct.i2c_client* %33, i32 %36, i32 %41, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.pmbus_data*, %struct.pmbus_data** %14, align 8
  %45 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %29
  %50 = sext i32 %47 to i64
  br label %53

51:                                               ; preds = %29
  %52 = load i64, i64* %9, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %26
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.pmbus_samples_reg* @to_samples_reg(%struct.device_attribute*) #1

declare dso_local %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_pmbus_write_word_data(%struct.i2c_client*, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
