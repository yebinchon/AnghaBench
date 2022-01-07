; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_limit_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_limit_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { i32 }
%struct.pmbus_driver_info = type { i32* }
%struct.pmbus_sensor = type { i32 }
%struct.pmbus_sensor_attr = type { i32, i32, i64, i64, i64, i32, %struct.pmbus_limit_attr* }
%struct.pmbus_limit_attr = type { i64, i64, i32, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_data*, %struct.pmbus_driver_info*, i8*, i32, i32, %struct.pmbus_sensor*, %struct.pmbus_sensor_attr*)* @pmbus_add_limit_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_add_limit_attrs(%struct.i2c_client* %0, %struct.pmbus_data* %1, %struct.pmbus_driver_info* %2, i8* %3, i32 %4, i32 %5, %struct.pmbus_sensor* %6, %struct.pmbus_sensor_attr* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.pmbus_data*, align 8
  %12 = alloca %struct.pmbus_driver_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pmbus_sensor*, align 8
  %17 = alloca %struct.pmbus_sensor_attr*, align 8
  %18 = alloca %struct.pmbus_limit_attr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.pmbus_sensor*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %10, align 8
  store %struct.pmbus_data* %1, %struct.pmbus_data** %11, align 8
  store %struct.pmbus_driver_info* %2, %struct.pmbus_driver_info** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.pmbus_sensor* %6, %struct.pmbus_sensor** %16, align 8
  store %struct.pmbus_sensor_attr* %7, %struct.pmbus_sensor_attr** %17, align 8
  %24 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %17, align 8
  %25 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %24, i32 0, i32 6
  %26 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %25, align 8
  store %struct.pmbus_limit_attr* %26, %struct.pmbus_limit_attr** %18, align 8
  %27 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %17, align 8
  %28 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %30

30:                                               ; preds = %154, %8
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %19, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %157

34:                                               ; preds = %30
  %35 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %38 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @pmbus_check_word_register(%struct.i2c_client* %35, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %151

42:                                               ; preds = %34
  %43 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %46 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %51 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %17, align 8
  %54 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %17, align 8
  %57 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %42
  %61 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %62 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %60, %42
  %66 = phi i1 [ true, %42 ], [ %64, %60 ]
  %67 = zext i1 %66 to i32
  %68 = call %struct.pmbus_sensor* @pmbus_add_sensor(%struct.pmbus_data* %43, i8* %44, i32 %47, i32 %48, i32 %49, i32 %52, i32 %55, i32 %67, i32 0, i32 1)
  store %struct.pmbus_sensor* %68, %struct.pmbus_sensor** %23, align 8
  %69 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %23, align 8
  %70 = icmp ne %struct.pmbus_sensor* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %159

74:                                               ; preds = %65
  %75 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %76 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %150

79:                                               ; preds = %74
  %80 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %12, align 8
  %81 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %17, align 8
  %88 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %150

92:                                               ; preds = %79
  %93 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %96 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %17, align 8
  %100 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %92
  %104 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %105 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %23, align 8
  br label %112

110:                                              ; preds = %103
  %111 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %16, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi %struct.pmbus_sensor* [ %109, %108 ], [ %111, %110 ]
  br label %115

114:                                              ; preds = %92
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi %struct.pmbus_sensor* [ %113, %112 ], [ null, %114 ]
  %117 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %17, align 8
  %118 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %123 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %16, align 8
  br label %130

128:                                              ; preds = %121
  %129 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %23, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi %struct.pmbus_sensor* [ %127, %126 ], [ %129, %128 ]
  br label %133

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi %struct.pmbus_sensor* [ %131, %130 ], [ null, %132 ]
  %135 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %17, align 8
  %136 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %137, %139
  %141 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %142 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @pmbus_add_boolean(%struct.pmbus_data* %93, i8* %94, i32 %97, i32 %98, %struct.pmbus_sensor* %116, %struct.pmbus_sensor* %134, i64 %140, i64 %143)
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %22, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %133
  %148 = load i32, i32* %22, align 4
  store i32 %148, i32* %9, align 4
  br label %159

149:                                              ; preds = %133
  store i32 1, i32* %20, align 4
  br label %150

150:                                              ; preds = %149, %79, %74
  br label %151

151:                                              ; preds = %150, %34
  %152 = load %struct.pmbus_limit_attr*, %struct.pmbus_limit_attr** %18, align 8
  %153 = getelementptr inbounds %struct.pmbus_limit_attr, %struct.pmbus_limit_attr* %152, i32 1
  store %struct.pmbus_limit_attr* %153, %struct.pmbus_limit_attr** %18, align 8
  br label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %21, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %21, align 4
  br label %30

157:                                              ; preds = %30
  %158 = load i32, i32* %20, align 4
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %157, %147, %71
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local i64 @pmbus_check_word_register(%struct.i2c_client*, i32, i32) #1

declare dso_local %struct.pmbus_sensor* @pmbus_add_sensor(%struct.pmbus_data*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pmbus_add_boolean(%struct.pmbus_data*, i8*, i32, i32, %struct.pmbus_sensor*, %struct.pmbus_sensor*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
