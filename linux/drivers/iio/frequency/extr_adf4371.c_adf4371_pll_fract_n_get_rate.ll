; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_pll_fract_n_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_pll_fract_n_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf4371_state = type { i32, i32, i32, i32, i64, i64 }

@ADF4371_MODULUS1 = common dso_local global i32 0, align 4
@ADF4371_CH_RF8 = common dso_local global i64 0, align 8
@ADF4371_CH_RFAUX8 = common dso_local global i64 0, align 8
@ADF4371_CH_RF16 = common dso_local global i64 0, align 8
@ADF4371_CH_RF32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adf4371_state*, i64)* @adf4371_pll_fract_n_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adf4371_pll_fract_n_get_rate(%struct.adf4371_state* %0, i64 %1) #0 {
  %3 = alloca %struct.adf4371_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.adf4371_state* %0, %struct.adf4371_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %9 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @ADF4371_MODULUS1, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %15 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %13, %16
  %18 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %19 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %24 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %28 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %34 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @do_div(i64 %32, i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @ADF4371_MODULUS1, align 4
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = add i64 %37, %40
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @ADF4371_CH_RF8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %2
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @ADF4371_CH_RFAUX8, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %2
  %52 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %53 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @ADF4371_MODULUS1, align 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 1, %59
  %61 = mul nsw i32 %58, %60
  %62 = call i32 @do_div(i64 %57, i32 %61)
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @ADF4371_CH_RF16, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i64, i64* %5, align 8
  %68 = shl i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %77

69:                                               ; preds = %56
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @ADF4371_CH_RF32, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i64, i64* %5, align 8
  %75 = shl i64 %74, 2
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %73, %69
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
