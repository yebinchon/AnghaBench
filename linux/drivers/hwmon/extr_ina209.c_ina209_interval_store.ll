; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_interval_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_interval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ina209_data = type { i32, i32, i32*, i32 }

@INA209_CONFIGURATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ina209_interval_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina209_interval_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ina209_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.ina209_data* @ina209_update_device(%struct.device* %14)
  store %struct.ina209_data* %15, %struct.ina209_data** %10, align 8
  %16 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %17 = call i64 @IS_ERR(%struct.ina209_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.ina209_data* %20)
  store i32 %21, i32* %5, align 4
  br label %62

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtol(i8* %23, i32 10, i64* %11)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %62

29:                                               ; preds = %22
  %30 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %31 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %34 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @INA209_CONFIGURATION, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @ina209_reg_from_interval(i32 %38, i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %42 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* @INA209_CONFIGURATION, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @i2c_smbus_write_word_swapped(i32 %43, i64 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %49 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @INA209_CONFIGURATION, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ina209_interval_from_reg(i32 %53)
  %55 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %56 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %58 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %29, %27, %19
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.ina209_data* @ina209_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.ina209_data*) #1

declare dso_local i32 @PTR_ERR(%struct.ina209_data*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ina209_reg_from_interval(i32, i64) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i64, i32) #1

declare dso_local i32 @ina209_interval_from_reg(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
