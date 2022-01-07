; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_slew_rate_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_slew_rate_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { i64 }

@S64_MAX = common dso_local global i64 0, align 8
@ad5758_sr_clk = common dso_local global i64* null, align 8
@AD5758_FULL_SCALE_MICRO = common dso_local global i64 0, align 8
@ad5758_sr_step = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*)* @ad5758_slew_rate_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_slew_rate_config(%struct.ad5758_state* %0) #0 {
  %2 = alloca %struct.ad5758_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ad5758_state* %0, %struct.ad5758_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %11 = load i64, i64* @S64_MAX, align 8
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %65, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i64*, i64** @ad5758_sr_clk, align 8
  %15 = call i32 @ARRAY_SIZE(i64* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %12
  %18 = load i64, i64* @AD5758_FULL_SCALE_MICRO, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64*, i64** @ad5758_sr_clk, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @do_div(i64 %19, i64 %24)
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.ad5758_state*, %struct.ad5758_state** %2, align 8
  %28 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @do_div(i64 %26, i64 %29)
  %31 = load i64*, i64** @ad5758_sr_step, align 8
  %32 = load i64*, i64** @ad5758_sr_step, align 8
  %33 = call i32 @ARRAY_SIZE(i64* %32)
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @ad5758_find_closest_match(i64* %31, i32 %33, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i64, i64* @AD5758_FULL_SCALE_MICRO, align 8
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64*, i64** @ad5758_sr_step, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @do_div(i64 %37, i64 %42)
  %44 = load i64, i64* %10, align 8
  %45 = load i64*, i64** @ad5758_sr_clk, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @do_div(i64 %44, i64 %49)
  %51 = load %struct.ad5758_state*, %struct.ad5758_state** %2, align 8
  %52 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i64 @abs(i64 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %17
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %8, align 8
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %17
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %12

68:                                               ; preds = %12
  %69 = load %struct.ad5758_state*, %struct.ad5758_state** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ad5758_slew_rate_set(%struct.ad5758_state* %69, i32 %70, i32 %71)
  ret i32 %72
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @ad5758_find_closest_match(i64*, i32, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @ad5758_slew_rate_set(%struct.ad5758_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
