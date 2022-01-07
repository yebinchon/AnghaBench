; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_calc_heater_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_calc_heater_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { %struct.bme680_calib }
%struct.bme680_calib = type { i32, i32, i32, i32, i32 }

@BME680_AMB_TEMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, i32)* @bme680_calc_heater_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_calc_heater_res(%struct.bme680_data* %0, i32 %1) #0 {
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
  store %struct.bme680_data* %0, %struct.bme680_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %14 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %13, i32 0, i32 0
  store %struct.bme680_calib* %14, %struct.bme680_calib** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 400
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 400, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i64, i64* @BME680_AMB_TEMP, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %22 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = sdiv i32 %24, 1000
  %26 = mul nsw i32 %25, 256
  store i32 %26, i32* %6, align 4
  %27 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %28 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 784
  %31 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %32 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 154009
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %34, %35
  %37 = mul nsw i32 %36, 5
  %38 = sdiv i32 %37, 100
  %39 = add nsw i32 %38, 3276800
  %40 = sdiv i32 %39, 10
  %41 = mul nsw i32 %30, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %48 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 4
  %51 = sdiv i32 %46, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %53 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 131, %54
  %56 = add nsw i32 %55, 65536
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sdiv i32 %57, %58
  %60 = sub nsw i32 %59, 250
  %61 = mul nsw i32 %60, 34
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 50
  %64 = sdiv i32 %63, 100
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
