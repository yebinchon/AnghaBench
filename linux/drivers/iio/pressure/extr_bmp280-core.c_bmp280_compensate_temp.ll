; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_compensate_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_compensate_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bmp280_calib }
%struct.bmp280_calib = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, i32)* @bmp280_compensate_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_compensate_temp(%struct.bmp280_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bmp280_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bmp280_calib*, align 8
  store %struct.bmp280_data* %0, %struct.bmp280_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %9 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.bmp280_calib* %10, %struct.bmp280_calib** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 3
  %13 = load %struct.bmp280_calib*, %struct.bmp280_calib** %7, align 8
  %14 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 1
  %18 = sub nsw i32 %12, %17
  %19 = load %struct.bmp280_calib*, %struct.bmp280_calib** %7, align 8
  %20 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = mul nsw i32 %18, %22
  %24 = ashr i32 %23, 11
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 4
  %27 = load %struct.bmp280_calib*, %struct.bmp280_calib** %7, align 8
  %28 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = sub nsw i32 %26, %30
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 4
  %34 = load %struct.bmp280_calib*, %struct.bmp280_calib** %7, align 8
  %35 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = sub nsw i32 %33, %37
  %39 = mul nsw i32 %31, %38
  %40 = ashr i32 %39, 12
  %41 = load %struct.bmp280_calib*, %struct.bmp280_calib** %7, align 8
  %42 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = mul nsw i32 %40, %44
  %46 = ashr i32 %45, 14
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %51 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %53 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 5
  %56 = add nsw i32 %55, 128
  %57 = ashr i32 %56, 8
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
