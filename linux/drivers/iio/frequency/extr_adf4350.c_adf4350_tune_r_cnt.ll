; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_tune_r_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_tune_r_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf4350_state = type { i32, i32, %struct.adf4350_platform_data* }
%struct.adf4350_platform_data = type { i64, i64 }

@ADF4350_MAX_FREQ_PFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf4350_state*, i16)* @adf4350_tune_r_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4350_tune_r_cnt(%struct.adf4350_state* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.adf4350_state*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.adf4350_platform_data*, align 8
  store %struct.adf4350_state* %0, %struct.adf4350_state** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %7 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %6, i32 0, i32 2
  %8 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %7, align 8
  store %struct.adf4350_platform_data* %8, %struct.adf4350_platform_data** %5, align 8
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i16, i16* %4, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %4, align 2
  %12 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %13 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 2, i32 1
  %21 = mul nsw i32 %14, %20
  %22 = load i16, i16* %4, align 2
  %23 = zext i16 %22 to i32
  %24 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %5, align 8
  %25 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 1
  %30 = mul nsw i32 %23, %29
  %31 = sdiv i32 %21, %30
  %32 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %33 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %9
  %35 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %36 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ADF4350_MAX_FREQ_PFD, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %9, label %40

40:                                               ; preds = %34
  %41 = load i16, i16* %4, align 2
  %42 = zext i16 %41 to i32
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
