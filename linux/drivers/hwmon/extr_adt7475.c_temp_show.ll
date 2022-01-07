; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7475_data = type { i32**, i32, i32, i32 }
%struct.sensor_device_attribute_2 = type { i32, i64 }

@THERM = common dso_local global i64 0, align 8
@CONFIG5_TEMPOFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adt7475_data*, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca i32, align 4
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
  br label %155

21:                                               ; preds = %3
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %134 [
    i32 129, label %25
    i32 128, label %74
    i32 131, label %108
    i32 130, label %119
  ]

25:                                               ; preds = %21
  %26 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %27 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %26, i32 0, i32 3
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %30 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %31, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %39 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %44 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 4
  %50 = and i32 %49, 15
  store i32 %50, i32* %10, align 4
  br label %54

51:                                               ; preds = %25
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 15
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %56 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %57 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i64, i64* @THERM, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %63 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @reg2temp(%struct.adt7475_data* %55, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %68, 1000
  %70 = sub nsw i32 %67, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %72 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %71, i32 0, i32 3
  %73 = call i32 @mutex_unlock(i32* %72)
  br label %151

74:                                               ; preds = %21
  %75 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %76 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %75, i32 0, i32 3
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %79 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %82 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %80, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %88 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  %92 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %93 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CONFIG5_TEMPOFFSET, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %74
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 %99, 1000
  store i32 %100, i32* %10, align 4
  br label %104

101:                                              ; preds = %74
  %102 = load i32, i32* %10, align 4
  %103 = mul nsw i32 %102, 500
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %106 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %105, i32 0, i32 3
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %151

108:                                              ; preds = %21
  %109 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %110 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %113 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = ashr i32 %111, %116
  %118 = and i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %151

119:                                              ; preds = %21
  %120 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %121 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %124 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 32768, i32 16384
  %129 = and i32 %122, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %10, align 4
  br label %151

134:                                              ; preds = %21
  %135 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %136 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %137 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %136, i32 0, i32 0
  %138 = load i32**, i32*** %137, align 8
  %139 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %140 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %138, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %146 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @reg2temp(%struct.adt7475_data* %135, i32 %149)
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %134, %119, %108, %104, %54
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @sprintf(i8* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %153)
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %151, %18
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.adt7475_data* @adt7475_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @IS_ERR(%struct.adt7475_data*) #1

declare dso_local i32 @PTR_ERR(%struct.adt7475_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reg2temp(%struct.adt7475_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
