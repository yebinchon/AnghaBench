; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_temp_input_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_temp_input_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.max6697_data = type { i32**, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX6697_TEMP_INPUT = common dso_local global i64 0, align 8
@MAX6697_TEMP_EXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_input_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_input_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.max6697_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.max6697_data* @max6697_update_device(%struct.device* %15)
  store %struct.max6697_data* %16, %struct.max6697_data** %9, align 8
  %17 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %18 = call i64 @IS_ERR(%struct.max6697_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %22 = call i32 @PTR_ERR(%struct.max6697_data* %21)
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %3
  %24 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %25 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @MAX6697_TEMP_INPUT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %35 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = shl i32 %37, 3
  store i32 %38, i32* %10, align 4
  %39 = load %struct.max6697_data*, %struct.max6697_data** %9, align 8
  %40 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @MAX6697_TEMP_EXT, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 5
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, 125
  %55 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %23, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.max6697_data* @max6697_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.max6697_data*) #1

declare dso_local i32 @PTR_ERR(%struct.max6697_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
