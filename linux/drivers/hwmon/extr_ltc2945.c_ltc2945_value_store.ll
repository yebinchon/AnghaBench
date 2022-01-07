; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_value_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_value_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ltc2945_value_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2945_value_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %10, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.regmap* @dev_get_drvdata(%struct.device* %20)
  store %struct.regmap* %21, %struct.regmap** %11, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %13)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %5, align 4
  br label %77

31:                                               ; preds = %4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @ltc2945_val_to_reg(%struct.device* %32, i32 %33, i64 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @is_power_reg(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @clamp_val(i32 %40, i32 0, i32 16777215)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = ashr i32 %42, 16
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %16, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %16, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %49, i32* %50, align 4
  store i32 3, i32* %15, align 4
  br label %61

51:                                               ; preds = %31
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @clamp_val(i32 %52, i32 0, i32 4095)
  %54 = shl i32 %53, 4
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = ashr i32 %55, 8
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %16, align 4
  %59 = and i32 %58, 255
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  store i32 2, i32* %15, align 4
  br label %61

61:                                               ; preds = %51, %39
  %62 = load %struct.regmap*, %struct.regmap** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @regmap_bulk_write(%struct.regmap* %62, i32 %63, i32* %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  br label %74

72:                                               ; preds = %61
  %73 = load i64, i64* %9, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i64 [ %71, %69 ], [ %73, %72 ]
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %29
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @ltc2945_val_to_reg(%struct.device*, i32, i64) #1

declare dso_local i64 @is_power_reg(i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
