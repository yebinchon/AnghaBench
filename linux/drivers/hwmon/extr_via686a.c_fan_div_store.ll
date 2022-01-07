; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.via686a_data = type { i32*, i32 }
%struct.sensor_device_attribute = type { i32 }

@VIA686A_REG_FANDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.via686a_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.via686a_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.via686a_data* %17, %struct.via686a_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %11, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtoul(i8* %23, i32 10, i64* %14)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %5, align 4
  br label %69

29:                                               ; preds = %4
  %30 = load %struct.via686a_data*, %struct.via686a_data** %10, align 8
  %31 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.via686a_data*, %struct.via686a_data** %10, align 8
  %34 = load i32, i32* @VIA686A_REG_FANDIV, align 4
  %35 = call i32 @via686a_read_value(%struct.via686a_data* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @DIV_TO_REG(i64 %36)
  %38 = load %struct.via686a_data*, %struct.via686a_data** %10, align 8
  %39 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  %45 = and i32 %44, 15
  %46 = load %struct.via686a_data*, %struct.via686a_data** %10, align 8
  %47 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 6
  %52 = or i32 %45, %51
  %53 = load %struct.via686a_data*, %struct.via686a_data** %10, align 8
  %54 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 4
  %59 = or i32 %52, %58
  store i32 %59, i32* %13, align 4
  %60 = load %struct.via686a_data*, %struct.via686a_data** %10, align 8
  %61 = load i32, i32* @VIA686A_REG_FANDIV, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @via686a_write_value(%struct.via686a_data* %60, i32 %61, i32 %62)
  %64 = load %struct.via686a_data*, %struct.via686a_data** %10, align 8
  %65 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %29, %27
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.via686a_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @via686a_read_value(%struct.via686a_data*, i32) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @via686a_write_value(%struct.via686a_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
