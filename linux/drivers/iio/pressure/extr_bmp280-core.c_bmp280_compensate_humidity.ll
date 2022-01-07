; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_compensate_humidity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_compensate_humidity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bmp280_calib }
%struct.bmp280_calib = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, i32)* @bmp280_compensate_humidity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_compensate_humidity(%struct.bmp280_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bmp280_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bmp280_calib*, align 8
  store %struct.bmp280_data* %0, %struct.bmp280_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %8 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.bmp280_calib* %9, %struct.bmp280_calib** %6, align 8
  %10 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %11 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = sub nsw i32 %13, 76800
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 14
  %17 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %18 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 20
  %21 = sub nsw i32 %16, %20
  %22 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %23 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sub nsw i32 %21, %26
  %28 = add nsw i32 %27, 16384
  %29 = ashr i32 %28, 15
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %32 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  %35 = ashr i32 %34, 10
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %38 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %36, %40
  %42 = ashr i32 %41, 11
  %43 = add nsw i32 %42, 32768
  %44 = mul nsw i32 %35, %43
  %45 = ashr i32 %44, 10
  %46 = add nsw i32 %45, 2097152
  %47 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %48 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = add nsw i32 %50, 8192
  %52 = ashr i32 %51, 14
  %53 = mul nsw i32 %29, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 15
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 15
  %58 = mul nsw i32 %55, %57
  %59 = ashr i32 %58, 7
  %60 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %61 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = mul nsw i32 %59, %63
  %65 = ashr i32 %64, 4
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 12
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
