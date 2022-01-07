; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7791_state = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ad7791_platform_data = type { i64, i64, i32 }

@AD7791_MODE_BUFFER = common dso_local global i32 0, align 4
@AD7791_FILTER_RATE_16_6 = common dso_local global i32 0, align 4
@AD7791_FLAG_HAS_BUFFER = common dso_local global i32 0, align 4
@AD7791_FLAG_HAS_BURNOUT = common dso_local global i32 0, align 4
@AD7791_MODE_BURNOUT = common dso_local global i32 0, align 4
@AD7791_FLAG_HAS_UNIPOLAR = common dso_local global i32 0, align 4
@AD7791_MODE_UNIPOLAR = common dso_local global i32 0, align 4
@AD7791_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7791_state*, %struct.ad7791_platform_data*)* @ad7791_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7791_setup(%struct.ad7791_state* %0, %struct.ad7791_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7791_state*, align 8
  %5 = alloca %struct.ad7791_platform_data*, align 8
  store %struct.ad7791_state* %0, %struct.ad7791_state** %4, align 8
  store %struct.ad7791_platform_data* %1, %struct.ad7791_platform_data** %5, align 8
  %6 = load i32, i32* @AD7791_MODE_BUFFER, align 4
  %7 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %8 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @AD7791_FILTER_RATE_16_6, align 4
  %10 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %11 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ad7791_platform_data*, %struct.ad7791_platform_data** %5, align 8
  %13 = icmp ne %struct.ad7791_platform_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

15:                                               ; preds = %2
  %16 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %17 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AD7791_FLAG_HAS_BUFFER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %15
  %25 = load %struct.ad7791_platform_data*, %struct.ad7791_platform_data** %5, align 8
  %26 = getelementptr inbounds %struct.ad7791_platform_data, %struct.ad7791_platform_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @AD7791_MODE_BUFFER, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %33 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %29, %24, %15
  %37 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %38 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AD7791_FLAG_HAS_BURNOUT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.ad7791_platform_data*, %struct.ad7791_platform_data** %5, align 8
  %47 = getelementptr inbounds %struct.ad7791_platform_data, %struct.ad7791_platform_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @AD7791_MODE_BURNOUT, align 4
  %52 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %53 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %45, %36
  %57 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %58 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AD7791_FLAG_HAS_UNIPOLAR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.ad7791_platform_data*, %struct.ad7791_platform_data** %5, align 8
  %67 = getelementptr inbounds %struct.ad7791_platform_data, %struct.ad7791_platform_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @AD7791_MODE_UNIPOLAR, align 4
  %72 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %73 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %65, %56
  %77 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %78 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %77, i32 0, i32 1
  %79 = load i32, i32* @AD7791_REG_MODE, align 4
  %80 = load %struct.ad7791_state*, %struct.ad7791_state** %4, align 8
  %81 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ad_sd_write_reg(i32* %78, i32 %79, i32 4, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %76, %14
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @ad_sd_write_reg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
