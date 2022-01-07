; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_parse_temp_caldata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_parse_temp_caldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hts221_hw = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HTS221_REG_0T_CAL_Y_H = common dso_local global i32 0, align 4
@HTS221_REG_T1_T0_CAL_Y_H = common dso_local global i32 0, align 4
@HTS221_REG_1T_CAL_Y_H = common dso_local global i32 0, align 4
@HTS221_REG_0T_CAL_X_L = common dso_local global i32 0, align 4
@HTS221_REG_1T_CAL_X_L = common dso_local global i32 0, align 4
@HTS221_SENSOR_T = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hts221_hw*)* @hts221_parse_temp_caldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_parse_temp_caldata(%struct.hts221_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hts221_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hts221_hw* %0, %struct.hts221_hw** %3, align 8
  %14 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %15 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HTS221_REG_0T_CAL_Y_H, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %7)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %116

23:                                               ; preds = %1
  %24 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %25 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HTS221_REG_T1_T0_CAL_Y_H, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %8)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %116

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 3
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %40 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HTS221_REG_1T_CAL_Y_H, align 4
  %43 = call i32 @regmap_read(i32 %41, i32 %42, i32* %7)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %116

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 12
  %51 = ashr i32 %50, 2
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %12, align 4
  %55 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %56 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HTS221_REG_0T_CAL_X_L, align 4
  %59 = call i32 @regmap_bulk_read(i32 %57, i32 %58, i32* %13, i32 4)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %116

64:                                               ; preds = %48
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %68 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HTS221_REG_1T_CAL_X_L, align 4
  %71 = call i32 @regmap_bulk_read(i32 %69, i32 %70, i32* %13, i32 4)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %116

76:                                               ; preds = %64
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %80 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @HTS221_SENSOR_T, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32* %84, i32** %5, align 8
  %85 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %86 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i64, i64* @HTS221_SENSOR_T, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32* %90, i32** %6, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %91, %92
  %94 = mul nsw i32 %93, 8000
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sdiv i32 %94, %97
  %99 = load i32*, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sub nsw i32 %102, %105
  %107 = mul nsw i32 %106, 1000
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sdiv i32 %107, %110
  %112 = load i32*, i32** %6, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, 8
  store i32 %115, i32* %113, align 4
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %76, %74, %62, %46, %31, %21
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
