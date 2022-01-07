; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_init_shub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_init_shub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_5__ = type { %struct.st_lsm6dsx_shub_settings }
%struct.st_lsm6dsx_shub_settings = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.st_sensors_platform_data = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"st,pullups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_hw*)* @st_lsm6dsx_init_shub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_init_shub(%struct.st_lsm6dsx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_lsm6dsx_hw*, align 8
  %4 = alloca %struct.st_lsm6dsx_shub_settings*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.st_sensors_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %3, align 8
  %9 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %10 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %15 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.st_lsm6dsx_shub_settings* %17, %struct.st_lsm6dsx_shub_settings** %4, align 8
  %18 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %19 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.st_sensors_platform_data*
  store %struct.st_sensors_platform_data* %23, %struct.st_sensors_platform_data** %6, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call i64 @of_property_read_bool(%struct.device_node* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %6, align 8
  %32 = icmp ne %struct.st_sensors_platform_data* %31, null
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %6, align 8
  %35 = getelementptr inbounds %struct.st_sensors_platform_data, %struct.st_sensors_platform_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %33, %26
  %39 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %40 = call i32 @st_lsm6dsx_set_page(%struct.st_lsm6dsx_hw* %39, i32 1)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %107

45:                                               ; preds = %38
  %46 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %4, align 8
  %47 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 1, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %52 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %4, align 8
  %55 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %4, align 8
  %59 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @regmap_update_bits(i32 %53, i64 %57, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %65 = call i32 @st_lsm6dsx_set_page(%struct.st_lsm6dsx_hw* %64, i32 0)
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %45
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %107

70:                                               ; preds = %45
  br label %71

71:                                               ; preds = %70, %33, %30
  %72 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %4, align 8
  %73 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %71
  %78 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %79 = call i32 @st_lsm6dsx_set_page(%struct.st_lsm6dsx_hw* %78, i32 1)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %107

84:                                               ; preds = %77
  %85 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %4, align 8
  %86 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 3, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %91 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %4, align 8
  %94 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %4, align 8
  %98 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @regmap_update_bits(i32 %92, i64 %96, i32 %100, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %104 = call i32 @st_lsm6dsx_set_page(%struct.st_lsm6dsx_hw* %103, i32 0)
  br label %105

105:                                              ; preds = %84, %71
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %82, %68, %43
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @st_lsm6dsx_set_page(%struct.st_lsm6dsx_hw*, i32) #1

declare dso_local i32 @ST_LSM6DSX_SHIFT_VAL(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
