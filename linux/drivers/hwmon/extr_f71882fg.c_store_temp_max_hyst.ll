; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_temp_max_hyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_temp_max_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_max_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_temp_max_hyst(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71882fg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.f71882fg_data* %17, %struct.f71882fg_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtol(i8* %24, i32 10, i64* %15)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %117

30:                                               ; preds = %4
  %31 = load i64, i64* %15, align 8
  %32 = sdiv i64 %31, 1000
  store i64 %32, i64* %15, align 8
  %33 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %34 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @F71882FG_REG_TEMP_HIGH(i32 %37)
  %39 = call i8* @f71882fg_read8(%struct.f71882fg_data* %36, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %42 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load i64, i64* %15, align 8
  %48 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %49 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 15
  %56 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %57 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @clamp_val(i64 %47, i32 %55, i32 %62)
  store i64 %63, i64* %15, align 8
  %64 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %65 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %15, align 8
  %73 = sub nsw i64 %71, %72
  store i64 %73, i64* %15, align 8
  %74 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sdiv i32 %75, 2
  %77 = call i32 @F71882FG_REG_TEMP_HYST(i32 %76)
  %78 = call i8* @f71882fg_read8(%struct.f71882fg_data* %74, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %30
  %84 = load i32, i32* %14, align 4
  %85 = and i32 %84, 15
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %15, align 8
  %88 = shl i64 %87, 4
  %89 = or i64 %86, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %14, align 4
  br label %98

91:                                               ; preds = %30
  %92 = load i32, i32* %14, align 4
  %93 = and i32 %92, 240
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %15, align 8
  %96 = or i64 %94, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %91, %83
  %99 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sdiv i32 %100, 2
  %102 = call i32 @F71882FG_REG_TEMP_HYST(i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @f71882fg_write8(%struct.f71882fg_data* %99, i32 %102, i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %107 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sdiv i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %105, i32* %112, align 4
  %113 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %114 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %113, i32 0, i32 2
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %98, %28
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_HIGH(i32) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_HYST(i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
