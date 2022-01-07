; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dps310_data = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dps310_data*, i32*, i32*, i64)* @dps310_read_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_read_pressure(%struct.dps310_data* %0, i32* %1, i32* %2, i64 %3) #0 {
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
  switch i64 %11, label %53 [
    i64 128, label %12
    i64 129, label %23
    i64 130, label %42
  ]

12:                                               ; preds = %4
  %13 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %14 = call i32 @dps310_get_pres_samp_freq(%struct.dps310_data* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %56

19:                                               ; preds = %12
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %22, i32* %5, align 4
  br label %56

23:                                               ; preds = %4
  %24 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %25 = call i32 @dps310_read_pres_raw(%struct.dps310_data* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %56

30:                                               ; preds = %23
  %31 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %32 = call i32 @dps310_calculate_pressure(%struct.dps310_data* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %56

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 1000, i32* %40, align 4
  %41 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %41, i32* %5, align 4
  br label %56

42:                                               ; preds = %4
  %43 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %44 = call i32 @dps310_get_pres_precision(%struct.dps310_data* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %56

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %52, i32* %5, align 4
  br label %56

53:                                               ; preds = %4
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %49, %47, %37, %35, %28, %19, %17
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @dps310_get_pres_samp_freq(%struct.dps310_data*) #1

declare dso_local i32 @dps310_read_pres_raw(%struct.dps310_data*) #1

declare dso_local i32 @dps310_calculate_pressure(%struct.dps310_data*) #1

declare dso_local i32 @dps310_get_pres_precision(%struct.dps310_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
