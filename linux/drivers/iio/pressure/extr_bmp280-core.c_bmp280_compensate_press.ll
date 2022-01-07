; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_compensate_press.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_compensate_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bmp280_calib }
%struct.bmp280_calib = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, i32)* @bmp280_compensate_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_compensate_press(%struct.bmp280_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmp280_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bmp280_calib*, align 8
  store %struct.bmp280_data* %0, %struct.bmp280_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %11 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.bmp280_calib* %12, %struct.bmp280_calib** %9, align 8
  %13 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %14 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = sub nsw i32 %16, 128000
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.bmp280_calib*, %struct.bmp280_calib** %9, align 8
  %22 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = mul nsw i32 %20, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.bmp280_calib*, %struct.bmp280_calib** %9, align 8
  %28 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = mul nsw i32 %26, %30
  %32 = shl i32 %31, 17
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.bmp280_calib*, %struct.bmp280_calib** %9, align 8
  %36 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 35
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load %struct.bmp280_calib*, %struct.bmp280_calib** %9, align 8
  %46 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = mul nsw i32 %44, %48
  %50 = ashr i32 %49, 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.bmp280_calib*, %struct.bmp280_calib** %9, align 8
  %53 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = mul nsw i32 %51, %55
  %57 = shl i32 %56, 12
  %58 = add nsw i32 %50, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 undef, %59
  %61 = load %struct.bmp280_calib*, %struct.bmp280_calib** %9, align 8
  %62 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = mul nsw i32 %60, %64
  %66 = ashr i32 %65, 33
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %111

70:                                               ; preds = %2
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 1048576, %71
  %73 = shl i32 %72, 31
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  %76 = mul nsw i32 %75, 3125
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @div64_s64(i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.bmp280_calib*, %struct.bmp280_calib** %9, align 8
  %81 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* %8, align 4
  %85 = ashr i32 %84, 13
  %86 = mul nsw i32 %83, %85
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 13
  %89 = mul nsw i32 %86, %88
  %90 = ashr i32 %89, 25
  store i32 %90, i32* %6, align 4
  %91 = load %struct.bmp280_calib*, %struct.bmp280_calib** %9, align 8
  %92 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %94, %95
  %97 = ashr i32 %96, 19
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %100, %101
  %103 = ashr i32 %102, 8
  %104 = load %struct.bmp280_calib*, %struct.bmp280_calib** %9, align 8
  %105 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = shl i32 %107, 4
  %109 = add nsw i32 %103, %108
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %70, %69
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @div64_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
