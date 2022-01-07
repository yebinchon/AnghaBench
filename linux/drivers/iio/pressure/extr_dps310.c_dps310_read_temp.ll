; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dps310_data = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dps310_data*, i32*, i32*, i64)* @dps310_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_read_temp(%struct.dps310_data* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dps310_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dps310_data* %0, %struct.dps310_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  switch i64 %11, label %52 [
    i64 128, label %12
    i64 129, label %23
    i64 130, label %41
  ]

12:                                               ; preds = %4
  %13 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %14 = call i32 @dps310_get_temp_samp_freq(%struct.dps310_data* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %55

19:                                               ; preds = %12
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %4
  %24 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %25 = call i32 @dps310_read_temp_raw(%struct.dps310_data* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %55

30:                                               ; preds = %23
  %31 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %32 = call i32 @dps310_calculate_temp(%struct.dps310_data* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %55

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %5, align 4
  br label %55

41:                                               ; preds = %4
  %42 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %43 = call i32 @dps310_get_temp_precision(%struct.dps310_data* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %55

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %5, align 4
  br label %55

52:                                               ; preds = %4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %48, %46, %37, %35, %28, %19, %17
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @dps310_get_temp_samp_freq(%struct.dps310_data*) #1

declare dso_local i32 @dps310_read_temp_raw(%struct.dps310_data*) #1

declare dso_local i32 @dps310_calculate_temp(%struct.dps310_data*) #1

declare dso_local i32 @dps310_get_temp_precision(%struct.dps310_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
