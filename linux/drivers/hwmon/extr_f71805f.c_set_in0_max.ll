; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_set_in0_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_set_in0_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71805f_data = type { i32, i32* }
%struct.sensor_device_attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_in0_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_in0_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71805f_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.f71805f_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.f71805f_data* %16, %struct.f71805f_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtol(i8* %22, i32 10, i64* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %56

28:                                               ; preds = %4
  %29 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %30 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @in0_to_reg(i64 %32)
  %34 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %35 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @F71805F_REG_IN_HIGH(i32 %41)
  %43 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %44 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @f71805f_write8(%struct.f71805f_data* %40, i32 %42, i32 %49)
  %51 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %52 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %28, %26
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.f71805f_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @in0_to_reg(i64) #1

declare dso_local i32 @f71805f_write8(%struct.f71805f_data*, i32, i32) #1

declare dso_local i32 @F71805F_REG_IN_HIGH(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
