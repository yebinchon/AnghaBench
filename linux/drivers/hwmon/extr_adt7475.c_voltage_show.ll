; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_voltage_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_voltage_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7475_data = type { i32, i16**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @voltage_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @voltage_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adt7475_data*, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.adt7475_data* @adt7475_update_device(%struct.device* %11)
  store %struct.adt7475_data* %12, %struct.adt7475_data** %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute_2* %14, %struct.sensor_device_attribute_2** %9, align 8
  %15 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %16 = call i64 @IS_ERR(%struct.adt7475_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.adt7475_data* %19)
  store i32 %20, i32* %4, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %36 [
    i32 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %28 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %31 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %29, %32
  %34 = and i32 %33, 1
  %35 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %21
  %37 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %38 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %37, i32 0, i32 1
  %39 = load i16**, i16*** %38, align 8
  %40 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16*, i16** %39, i64 %43
  %45 = load i16*, i16** %44, align 8
  %46 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %47 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %45, i64 %49
  %51 = load i16, i16* %50, align 2
  store i16 %51, i16* %10, align 2
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %54 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i16, i16* %10, align 2
  %58 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %59 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @reg2volt(i64 %56, i16 zeroext %57, i32 %60)
  %62 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %36, %25, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.adt7475_data* @adt7475_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @IS_ERR(%struct.adt7475_data*) #1

declare dso_local i32 @PTR_ERR(%struct.adt7475_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @reg2volt(i64, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
