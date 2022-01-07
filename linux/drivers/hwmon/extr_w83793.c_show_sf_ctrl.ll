; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_show_sf_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_show_sf_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.w83793_data = type { i32*, i32, i32*, i32* }

@TEMP_FAN_MAP = common dso_local global i32 0, align 4
@TEMP_PWM_ENABLE = common dso_local global i32 0, align 4
@TEMP_CRUISE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_sf_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_sf_ctrl(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute_2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.w83793_data*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute_2* %13, %struct.sensor_device_attribute_2** %7, align 8
  %14 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %7, align 8
  %15 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %7, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call %struct.w83793_data* @w83793_update_device(%struct.device* %20)
  store %struct.w83793_data* %21, %struct.w83793_data** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TEMP_FAN_MAP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %27 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  br label %79

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @TEMP_PWM_ENABLE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %39 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %40, %41
  %43 = and i32 %42, 1
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %11, align 4
  br label %78

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @TEMP_CRUISE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %51 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 127
  %58 = call i32 @TEMP_FROM_REG(i32 %57)
  store i32 %58, i32* %11, align 4
  br label %77

59:                                               ; preds = %45
  %60 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %61 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 4, i32 0
  %73 = ashr i32 %67, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, 15
  %76 = call i32 @TEMP_FROM_REG(i32 %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %59, %49
  br label %78

78:                                               ; preds = %77, %37
  br label %79

79:                                               ; preds = %78, %25
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %81)
  ret i32 %82
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.w83793_data* @w83793_update_device(%struct.device*) #1

declare dso_local i32 @TEMP_FROM_REG(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
