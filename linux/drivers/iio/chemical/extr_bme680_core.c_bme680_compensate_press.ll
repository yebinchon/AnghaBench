; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_compensate_press.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_compensate_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32, %struct.bme680_calib }
%struct.bme680_calib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BME680_MAX_OVERFLOW_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, i32)* @bme680_compensate_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_compensate_press(%struct.bme680_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bme680_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bme680_calib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %11 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %10, i32 0, i32 1
  store %struct.bme680_calib* %11, %struct.bme680_calib** %5, align 8
  %12 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %13 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 1
  %16 = sub nsw i32 %15, 64000
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 2
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 2
  %21 = mul nsw i32 %18, %20
  %22 = ashr i32 %21, 11
  %23 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %24 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = ashr i32 %26, 2
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %31 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = shl i32 %33, 1
  %35 = add nsw i32 %28, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 2
  %38 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %39 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = add nsw i32 %37, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 2
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 2
  %47 = mul nsw i32 %44, %46
  %48 = ashr i32 %47, 13
  %49 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %50 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 5
  %53 = mul nsw i32 %48, %52
  %54 = ashr i32 %53, 3
  %55 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %56 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %57, %58
  %60 = ashr i32 %59, 1
  %61 = add nsw i32 %54, %60
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %62, 18
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 32768, %64
  %66 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %67 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = ashr i32 %69, 15
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 1048576, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 12
  %76 = sub nsw i32 %73, %75
  %77 = mul nsw i32 %76, 3125
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @BME680_MAX_OVERFLOW_VAL, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %2
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sdiv i32 %82, %83
  %85 = shl i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %91

86:                                               ; preds = %2
  %87 = load i32, i32* %9, align 4
  %88 = shl i32 %87, 1
  %89 = load i32, i32* %6, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %93 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = ashr i32 %95, 3
  %97 = load i32, i32* %9, align 4
  %98 = ashr i32 %97, 3
  %99 = mul nsw i32 %96, %98
  %100 = ashr i32 %99, 13
  %101 = mul nsw i32 %94, %100
  %102 = ashr i32 %101, 12
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %103, 2
  %105 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %106 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %104, %107
  %109 = ashr i32 %108, 13
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %9, align 4
  %111 = ashr i32 %110, 8
  %112 = load i32, i32* %9, align 4
  %113 = ashr i32 %112, 8
  %114 = mul nsw i32 %111, %113
  %115 = load i32, i32* %9, align 4
  %116 = ashr i32 %115, 8
  %117 = mul nsw i32 %114, %116
  %118 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %119 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = ashr i32 %121, 17
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %129 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 7
  %132 = add nsw i32 %127, %131
  %133 = ashr i32 %132, 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
