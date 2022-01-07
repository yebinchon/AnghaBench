; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc6w201.c_in_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc6w201.c_in_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.emc6w201_data = type { i64**, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@nominal_mv = common dso_local global i32* null, align 8
@min = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.emc6w201_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.emc6w201_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.emc6w201_data* %18, %struct.emc6w201_data** %10, align 8
  %19 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %20 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %11, align 8
  %22 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %23 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %27 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @kstrtol(i8* %30, i32 10, i64* %15)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %5, align 4
  br label %106

36:                                               ; preds = %4
  %37 = load i64, i64* %15, align 8
  %38 = load i32*, i32** @nominal_mv, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 255, %42
  %44 = sdiv i32 %43, 192
  %45 = call i64 @clamp_val(i64 %37, i32 0, i32 %44)
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = mul nsw i64 %46, 192
  %48 = load i32*, i32** @nominal_mv, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @DIV_ROUND_CLOSEST(i64 %47, i32 %52)
  store i64 %53, i64* %15, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @min, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %36
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @EMC6W201_REG_IN_LOW(i32 %58)
  br label %63

60:                                               ; preds = %36
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @EMC6W201_REG_IN_HIGH(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i32 [ %59, %57 ], [ %62, %60 ]
  store i32 %64, i32* %16, align 4
  %65 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %66 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %65, i32 0, i32 1
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load i64, i64* %15, align 8
  %69 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %70 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %69, i32 0, i32 0
  %71 = load i64**, i64*** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64*, i64** %71, i64 %73
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 %68, i64* %78, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %82 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %81, i32 0, i32 0
  %83 = load i64**, i64*** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64*, i64** %83, i64 %85
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @emc6w201_write8(%struct.i2c_client* %79, i32 %80, i64 %91)
  store i32 %92, i32* %14, align 4
  %93 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %94 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %63
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  br label %103

101:                                              ; preds = %63
  %102 = load i64, i64* %9, align 8
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi i64 [ %100, %98 ], [ %102, %101 ]
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %34
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.emc6w201_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @EMC6W201_REG_IN_LOW(i32) #1

declare dso_local i32 @EMC6W201_REG_IN_HIGH(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @emc6w201_write8(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
