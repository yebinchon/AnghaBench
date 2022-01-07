; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_compensate_humid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_compensate_humid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32, %struct.bme680_calib }
%struct.bme680_calib = type { i32, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, i32)* @bme680_compensate_humid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_compensate_humid(%struct.bme680_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bme680_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bme680_calib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %15 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %14, i32 0, i32 1
  store %struct.bme680_calib* %15, %struct.bme680_calib** %5, align 8
  %16 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %17 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 5
  %20 = add nsw i32 %19, 128
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %24 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = mul nsw i32 %26, 16
  %28 = sub nsw i32 %22, %27
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %31 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = mul nsw i32 %29, %33
  %35 = sdiv i32 %34, 100
  %36 = ashr i32 %35, 1
  %37 = sub nsw i32 %28, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %39 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %44 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = sdiv i32 %46, 100
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %51 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = sdiv i32 %53, 100
  %55 = mul nsw i32 %48, %54
  %56 = ashr i32 %55, 6
  %57 = sdiv i32 %56, 100
  %58 = add nsw i32 %47, %57
  %59 = add nsw i32 %58, 16384
  %60 = mul nsw i32 %41, %59
  %61 = ashr i32 %60, 10
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %66 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 7
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %72 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = sdiv i32 %74, 100
  %76 = add nsw i32 %69, %75
  %77 = ashr i32 %76, 4
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 14
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 14
  %82 = mul nsw i32 %79, %81
  %83 = ashr i32 %82, 10
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %84, %85
  %87 = ashr i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %88, %89
  %91 = ashr i32 %90, 10
  %92 = mul nsw i32 %91, 1000
  %93 = ashr i32 %92, 12
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @clamp(i32 %94, i32 0, i32 100000)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  ret i32 %96
}

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
