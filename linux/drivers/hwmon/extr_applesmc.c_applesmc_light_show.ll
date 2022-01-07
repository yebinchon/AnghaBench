; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_light_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_light_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.applesmc_entry = type { i32 }

@applesmc_light_show.data_length = internal global i32 0, align 4
@LIGHT_SENSOR_LEFT_KEY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"light sensor data length set to %d\0A\00", align 1
@LIGHT_SENSOR_RIGHT_KEY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"(%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @applesmc_light_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_light_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.applesmc_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @applesmc_light_show.data_length, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @LIGHT_SENSOR_LEFT_KEY, align 4
  %17 = call %struct.applesmc_entry* @applesmc_get_entry_by_key(i32 %16)
  store %struct.applesmc_entry* %17, %struct.applesmc_entry** %8, align 8
  %18 = load %struct.applesmc_entry*, %struct.applesmc_entry** %8, align 8
  %19 = call i64 @IS_ERR(%struct.applesmc_entry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.applesmc_entry*, %struct.applesmc_entry** %8, align 8
  %23 = call i32 @PTR_ERR(%struct.applesmc_entry* %22)
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %15
  %25 = load %struct.applesmc_entry*, %struct.applesmc_entry** %8, align 8
  %26 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %24
  %33 = load %struct.applesmc_entry*, %struct.applesmc_entry** %8, align 8
  %34 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* @applesmc_light_show.data_length, align 4
  %36 = load i32, i32* @applesmc_light_show.data_length, align 4
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %3
  %39 = load i32, i32* @LIGHT_SENSOR_LEFT_KEY, align 4
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %41 = load i32, i32* @applesmc_light_show.data_length, align 4
  %42 = call i32 @applesmc_read_key(i32 %39, i32* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @applesmc_light_show.data_length, align 4
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be16_to_cpu(i32 %48)
  %50 = ashr i32 %49, 2
  store i32 %50, i32* %10, align 4
  br label %64

51:                                               ; preds = %38
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @LIGHT_SENSOR_RIGHT_KEY, align 4
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %60 = load i32, i32* @applesmc_light_show.data_length, align 4
  %61 = call i32 @applesmc_read_key(i32 %58, i32* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %57, %56, %45
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %75

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @snprintf(i8* %70, i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %67, %29, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.applesmc_entry* @applesmc_get_entry_by_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.applesmc_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.applesmc_entry*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @applesmc_read_key(i32, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
