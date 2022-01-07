; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_gpadc = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PALMAS_TRIM_GPADC_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TRIM read failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas_gpadc*, i32)* @palmas_gpadc_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpadc_calibrate(%struct.palmas_gpadc* %0, i32 %1) #0 {
  %3 = alloca %struct.palmas_gpadc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.palmas_gpadc* %0, %struct.palmas_gpadc** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %15 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %23 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %31 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %39 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %47 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PALMAS_TRIM_GPADC_BASE, align 4
  %50 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %51 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @palmas_read(i32 %48, i32 %49, i32 %57, i32* %6)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %2
  %62 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %63 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %137

67:                                               ; preds = %2
  %68 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %69 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PALMAS_TRIM_GPADC_BASE, align 4
  %72 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %73 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @palmas_read(i32 %70, i32 %71, i32 %79, i32* %7)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %67
  %84 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %85 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %137

89:                                               ; preds = %67
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %90, %91
  %93 = mul nsw i32 1000, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sdiv i32 %93, %96
  %98 = add nsw i32 1000, %97
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %99, %100
  %102 = mul nsw i32 %101, 1000
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sdiv i32 %102, %105
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %109 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  store i32 %107, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %117 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 5
  store i32 %115, i32* %122, align 4
  %123 = load i32, i32* %6, align 4
  %124 = mul nsw i32 %123, 1000
  %125 = load i32, i32* %5, align 4
  %126 = sub nsw i32 %125, 1000
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sub nsw i32 %124, %128
  %130 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %3, align 8
  %131 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 6
  store i32 %129, i32* %136, align 4
  br label %137

137:                                              ; preds = %89, %83, %61
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local i32 @palmas_read(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
