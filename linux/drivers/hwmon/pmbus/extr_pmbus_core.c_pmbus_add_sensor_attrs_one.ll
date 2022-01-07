; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_sensor_attrs_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_sensor_attrs_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { i64 }
%struct.pmbus_driver_info = type { i32 }
%struct.pmbus_sensor_attr = type { i32, i64, i32, i32, i64 }
%struct.pmbus_sensor = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@PB_STATUS_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_data*, %struct.pmbus_driver_info*, i8*, i32, i32, %struct.pmbus_sensor_attr*, i32)* @pmbus_add_sensor_attrs_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_add_sensor_attrs_one(%struct.i2c_client* %0, %struct.pmbus_data* %1, %struct.pmbus_driver_info* %2, i8* %3, i32 %4, i32 %5, %struct.pmbus_sensor_attr* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.pmbus_data*, align 8
  %12 = alloca %struct.pmbus_driver_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pmbus_sensor_attr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pmbus_sensor*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %10, align 8
  store %struct.pmbus_data* %1, %struct.pmbus_data** %11, align 8
  store %struct.pmbus_driver_info* %2, %struct.pmbus_driver_info** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.pmbus_sensor_attr* %6, %struct.pmbus_sensor_attr** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %16, align 8
  %22 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 65280
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %19, align 4
  %29 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %16, align 8
  %30 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %8
  %34 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %16, align 8
  %38 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  br label %46

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  %48 = call i32 @pmbus_add_label(%struct.pmbus_data* %34, i8* %35, i32 %36, i64 %39, i32 %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %20, align 4
  store i32 %52, i32* %9, align 4
  br label %133

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %8
  %55 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %16, align 8
  %60 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %16, align 8
  %63 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.pmbus_sensor* @pmbus_add_sensor(%struct.pmbus_data* %55, i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %61, i32 %64, i32 1, i32 1, i32 1)
  store %struct.pmbus_sensor* %65, %struct.pmbus_sensor** %18, align 8
  %66 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %18, align 8
  %67 = icmp ne %struct.pmbus_sensor* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %54
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %133

71:                                               ; preds = %54
  %72 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %16, align 8
  %73 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %132

76:                                               ; preds = %71
  %77 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %78 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %79 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %18, align 8
  %84 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %16, align 8
  %85 = call i32 @pmbus_add_limit_attrs(%struct.i2c_client* %77, %struct.pmbus_data* %78, %struct.pmbus_driver_info* %79, i8* %80, i32 %81, i32 %82, %struct.pmbus_sensor* %83, %struct.pmbus_sensor_attr* %84)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %20, align 4
  store i32 %89, i32* %9, align 4
  br label %133

90:                                               ; preds = %76
  %91 = load i32, i32* %20, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %131, label %93

93:                                               ; preds = %90
  %94 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %16, align 8
  %95 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %93
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* %19, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %101
  %105 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %106 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %104, %98
  %110 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i64 @pmbus_check_status_register(%struct.i2c_client* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %109
  %115 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i64, i64* @PB_STATUS_BASE, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %16, align 8
  %123 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @pmbus_add_boolean(%struct.pmbus_data* %115, i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32* null, i32* null, i64 %121, i32 %124)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %114
  %129 = load i32, i32* %20, align 4
  store i32 %129, i32* %9, align 4
  br label %133

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %109, %104, %101, %93, %90
  br label %132

132:                                              ; preds = %131, %71
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %128, %88, %68, %51
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i32 @pmbus_add_label(%struct.pmbus_data*, i8*, i32, i64, i32) #1

declare dso_local %struct.pmbus_sensor* @pmbus_add_sensor(%struct.pmbus_data*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pmbus_add_limit_attrs(%struct.i2c_client*, %struct.pmbus_data*, %struct.pmbus_driver_info*, i8*, i32, i32, %struct.pmbus_sensor*, %struct.pmbus_sensor_attr*) #1

declare dso_local i64 @pmbus_check_status_register(%struct.i2c_client*, i32) #1

declare dso_local i32 @pmbus_add_boolean(%struct.pmbus_data*, i8*, i8*, i32, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
