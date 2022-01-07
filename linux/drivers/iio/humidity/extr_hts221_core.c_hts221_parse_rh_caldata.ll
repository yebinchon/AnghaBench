; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_parse_rh_caldata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_parse_rh_caldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hts221_hw = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HTS221_REG_0RH_CAL_Y_H = common dso_local global i32 0, align 4
@HTS221_REG_1RH_CAL_Y_H = common dso_local global i32 0, align 4
@HTS221_REG_0RH_CAL_X_H = common dso_local global i32 0, align 4
@HTS221_REG_1RH_CAL_X_H = common dso_local global i32 0, align 4
@HTS221_SENSOR_H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hts221_hw*)* @hts221_parse_rh_caldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_parse_rh_caldata(%struct.hts221_hw* %0) #0 {
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
  store %struct.hts221_hw* %0, %struct.hts221_hw** %3, align 8
  %13 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %14 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HTS221_REG_0RH_CAL_Y_H, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %7)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %96

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %25 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HTS221_REG_1RH_CAL_Y_H, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %7)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %96

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %36 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HTS221_REG_0RH_CAL_X_H, align 4
  %39 = call i32 @regmap_bulk_read(i32 %37, i32 %38, i32* %12, i32 4)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %96

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %48 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @HTS221_REG_1RH_CAL_X_H, align 4
  %51 = call i32 @regmap_bulk_read(i32 %49, i32 %50, i32* %12, i32 4)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %96

56:                                               ; preds = %44
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %60 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @HTS221_SENSOR_H, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32* %64, i32** %5, align 8
  %65 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %66 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* @HTS221_SENSOR_H, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32* %70, i32** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %71, %72
  %74 = mul nsw i32 %73, 8000
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sdiv i32 %74, %77
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sub nsw i32 %82, %85
  %87 = mul nsw i32 %86, 1000
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sdiv i32 %87, %90
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 8
  store i32 %95, i32* %93, align 4
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %56, %54, %42, %31, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
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
