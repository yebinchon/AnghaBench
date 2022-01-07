; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_calculate_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_calculate_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dps310_data = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dps310_data*)* @dps310_calculate_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_calculate_temp(%struct.dps310_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dps310_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dps310_data* %0, %struct.dps310_data** %3, align 8
  %7 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %8 = call i32 @dps310_get_temp_k(%struct.dps310_data* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %17 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = mul nsw i64 %15, %18
  %20 = call i64 @div_s64(i64 %19, i32 2)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %23 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %26 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = mul nsw i64 %24, %27
  %29 = add nsw i64 %21, %28
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = mul nsw i64 %30, 1000
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @div_s64(i64 %31, i32 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %13, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @dps310_get_temp_k(%struct.dps310_data*) #1

declare dso_local i64 @div_s64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
