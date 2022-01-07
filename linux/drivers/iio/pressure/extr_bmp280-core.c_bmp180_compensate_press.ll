; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp180_compensate_press.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp180_compensate_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bmp180_calib }
%struct.bmp180_calib = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, i32)* @bmp180_compensate_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp180_compensate_press(%struct.bmp280_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bmp280_data*, align 8
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
  %14 = alloca %struct.bmp180_calib*, align 8
  store %struct.bmp280_data* %0, %struct.bmp280_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %16 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %19 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.bmp180_calib* %20, %struct.bmp180_calib** %14, align 8
  %21 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %22 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 4000
  store i32 %24, i32* %10, align 4
  %25 = load %struct.bmp180_calib*, %struct.bmp180_calib** %14, align 8
  %26 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %28, %29
  %31 = ashr i32 %30, 12
  %32 = mul nsw i32 %27, %31
  %33 = ashr i32 %32, 11
  store i32 %33, i32* %5, align 4
  %34 = load %struct.bmp180_calib*, %struct.bmp180_calib** %14, align 8
  %35 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  %39 = ashr i32 %38, 11
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.bmp180_calib*, %struct.bmp180_calib** %14, align 8
  %44 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = mul nsw i32 %46, 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = shl i32 %49, %50
  %52 = add nsw i32 %51, 2
  %53 = sdiv i32 %52, 4
  store i32 %53, i32* %9, align 4
  %54 = load %struct.bmp180_calib*, %struct.bmp180_calib** %14, align 8
  %55 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %56, %57
  %59 = ashr i32 %58, 13
  store i32 %59, i32* %5, align 4
  %60 = load %struct.bmp180_calib*, %struct.bmp180_calib** %14, align 8
  %61 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %63, %64
  %66 = ashr i32 %65, 12
  %67 = mul nsw i32 %62, %66
  %68 = ashr i32 %67, 16
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 2
  %73 = ashr i32 %72, 2
  store i32 %73, i32* %7, align 4
  %74 = load %struct.bmp180_calib*, %struct.bmp180_calib** %14, align 8
  %75 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 32768
  %79 = mul nsw i32 %76, %78
  %80 = ashr i32 %79, 15
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = ashr i32 50000, %84
  %86 = mul nsw i32 %83, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ult i32 %87, -2147483648
  br i1 %88, label %89, label %94

89:                                               ; preds = %2
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %90, 2
  %92 = load i32, i32* %11, align 4
  %93 = sdiv i32 %91, %92
  store i32 %93, i32* %8, align 4
  br label %99

94:                                               ; preds = %2
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sdiv i32 %95, %96
  %98 = mul nsw i32 %97, 2
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 8
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %102, 8
  %104 = mul nsw i32 %101, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = mul nsw i32 %105, 3038
  %107 = ashr i32 %106, 16
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 -7357, %108
  %110 = ashr i32 %109, 16
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %112, %113
  %115 = add nsw i32 %114, 3791
  %116 = ashr i32 %115, 4
  %117 = add nsw i32 %111, %116
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
