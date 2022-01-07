; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_sensor_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_sensor_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { %struct.pmbus_driver_info* }
%struct.pmbus_driver_info = type { i32, i32* }
%struct.pmbus_sensor_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_data*, i8*, %struct.pmbus_sensor_attr*, i32)* @pmbus_add_sensor_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_add_sensor_attrs(%struct.i2c_client* %0, %struct.pmbus_data* %1, i8* %2, %struct.pmbus_sensor_attr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.pmbus_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pmbus_sensor_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pmbus_driver_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %7, align 8
  store %struct.pmbus_data* %1, %struct.pmbus_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.pmbus_sensor_attr* %3, %struct.pmbus_sensor_attr** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.pmbus_data*, %struct.pmbus_data** %8, align 8
  %20 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %19, i32 0, i32 0
  %21 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %20, align 8
  store %struct.pmbus_driver_info* %21, %struct.pmbus_driver_info** %12, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %80, %5
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %12, align 8
  %28 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %10, align 8
  %29 = call i32 @pmbus_sensor_is_paged(%struct.pmbus_driver_info* %27, %struct.pmbus_sensor_attr* %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %12, align 8
  %34 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  br label %37

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 1, %36 ]
  store i32 %38, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %74, %37
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %12, align 8
  %45 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %10, align 8
  %52 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %74

57:                                               ; preds = %43
  %58 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %59 = load %struct.pmbus_data*, %struct.pmbus_data** %8, align 8
  %60 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %12, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %10, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @pmbus_add_sensor_attrs_one(%struct.i2c_client* %58, %struct.pmbus_data* %59, %struct.pmbus_driver_info* %60, i8* %61, i32 %62, i32 %63, %struct.pmbus_sensor_attr* %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %6, align 4
  br label %84

71:                                               ; preds = %57
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %39

77:                                               ; preds = %39
  %78 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %10, align 8
  %79 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %78, i32 1
  store %struct.pmbus_sensor_attr* %79, %struct.pmbus_sensor_attr** %10, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %22

83:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @pmbus_sensor_is_paged(%struct.pmbus_driver_info*, %struct.pmbus_sensor_attr*) #1

declare dso_local i32 @pmbus_add_sensor_attrs_one(%struct.i2c_client*, %struct.pmbus_data*, %struct.pmbus_driver_info*, i8*, i32, i32, %struct.pmbus_sensor_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
