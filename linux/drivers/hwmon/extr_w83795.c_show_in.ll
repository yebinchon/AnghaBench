; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_show_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_show_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.w83795_data = type { i32**, i32, i32** }

@IN_LSB_SHIFT_IDX = common dso_local global i32** null, align 8
@IN_LSB_IDX = common dso_local global i64 0, align 8
@IN_LSB_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_in(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute_2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.w83795_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %14 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute_2* %14, %struct.sensor_device_attribute_2** %7, align 8
  %15 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %7, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %7, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.w83795_data* @w83795_update_device(%struct.device* %21)
  store %struct.w83795_data* %22, %struct.w83795_data** %10, align 8
  %23 = load %struct.w83795_data*, %struct.w83795_data** %10, align 8
  %24 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %100 [
    i32 128, label %35
    i32 129, label %51
    i32 130, label %51
  ]

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %36, 17
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.w83795_data*, %struct.w83795_data** %10, align 8
  %40 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 17
  %44 = ashr i32 %41, %43
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %48, 8
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %38, %35
  br label %100

51:                                               ; preds = %3, %3
  %52 = load i32**, i32*** @IN_LSB_SHIFT_IDX, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @IN_LSB_IDX, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %12, align 8
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %61, 2
  store i32 %62, i32* %11, align 4
  %63 = load %struct.w83795_data*, %struct.w83795_data** %10, align 8
  %64 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %63, i32 0, i32 2
  %65 = load i32**, i32*** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32**, i32*** @IN_LSB_SHIFT_IDX, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @IN_LSB_SHIFT, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %72, %80
  %82 = and i32 %81, 3
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sge i32 %85, 17
  br i1 %86, label %87, label %99

87:                                               ; preds = %51
  %88 = load %struct.w83795_data*, %struct.w83795_data** %10, align 8
  %89 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 17
  %93 = ashr i32 %90, %92
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 %97, 8
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %87, %51
  br label %100

100:                                              ; preds = %3, %99, %50
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @in_from_reg(i32 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @sprintf(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %105)
  ret i32 %106
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.w83795_data* @w83795_update_device(%struct.device*) #1

declare dso_local i32 @in_from_reg(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
