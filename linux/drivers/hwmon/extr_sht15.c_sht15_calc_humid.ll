; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_calc_humid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_calc_humid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i32, i32 }

@SHT15_STATUS_LOW_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sht15_data*)* @sht15_calc_humid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_calc_humid(%struct.sht15_data* %0) #0 {
  %2 = alloca %struct.sht15_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %2, align 8
  %9 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %10 = call i32 @sht15_calc_temp(%struct.sht15_data* %9)
  store i32 %10, i32* %4, align 4
  store i32 -4, i32* %8, align 4
  %11 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %12 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SHT15_STATUS_LOW_RESOLUTION, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 648000, i32* %5, align 4
  store i32 -7200, i32* %6, align 4
  store i32 1280, i32* %7, align 4
  br label %19

18:                                               ; preds = %1
  store i32 40500, i32* %5, align 4
  store i32 -28, i32* %6, align 4
  store i32 80, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %22 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = sdiv i32 %24, 1000
  %26 = add nsw i32 -4000, %25
  %27 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %28 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %31 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sdiv i32 %35, 10000
  %37 = add nsw i32 %26, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 25000
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %42 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = add nsw i32 10000, %44
  %46 = mul nsw i32 %39, %45
  %47 = sdiv i32 %46, 1000000
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %47, %48
  ret i32 %49
}

declare dso_local i32 @sht15_calc_temp(%struct.sht15_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
