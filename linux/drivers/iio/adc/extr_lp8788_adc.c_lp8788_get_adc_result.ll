; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lp8788_adc.c_lp8788_get_adc_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lp8788_adc.c_lp8788_get_adc_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_adc = type { i32 }

@ADC_CONV_START = common dso_local global i32 0, align 4
@LP8788_ADC_CONF = common dso_local global i32 0, align 4
@LP8788_ADC_DONE = common dso_local global i32 0, align 4
@LP8788_ADC_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_adc*, i32, i32*)* @lp8788_get_adc_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_get_adc_result(%struct.lp8788_adc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lp8788_adc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lp8788_adc* %0, %struct.lp8788_adc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  store i32 %17, i32* %13, align 4
  store i32 5, i32* %14, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 1
  %20 = load i32, i32* @ADC_CONV_START, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.lp8788_adc*, %struct.lp8788_adc** %5, align 8
  %23 = getelementptr inbounds %struct.lp8788_adc, %struct.lp8788_adc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LP8788_ADC_CONF, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @lp8788_write_byte(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %76

31:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %14, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = call i32 @usleep_range(i32 100, i32 200)
  %38 = load %struct.lp8788_adc*, %struct.lp8788_adc** %5, align 8
  %39 = getelementptr inbounds %struct.lp8788_adc, %struct.lp8788_adc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LP8788_ADC_DONE, align 4
  %42 = call i32 @lp8788_read_byte(i32 %40, i32 %41, i32* %11)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %76

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %51

50:                                               ; preds = %46
  br label %32

51:                                               ; preds = %49, %32
  %52 = load %struct.lp8788_adc*, %struct.lp8788_adc** %5, align 8
  %53 = getelementptr inbounds %struct.lp8788_adc, %struct.lp8788_adc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LP8788_ADC_RAW, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @lp8788_read_multi_bytes(i32 %54, i32 %55, i32* %56, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %76

62:                                               ; preds = %51
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 4
  %66 = and i32 %65, 4080
  store i32 %66, i32* %8, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 4
  %70 = and i32 %69, 15
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %78

76:                                               ; preds = %61, %45, %30
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %62
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @lp8788_write_byte(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @lp8788_read_byte(i32, i32, i32*) #1

declare dso_local i32 @lp8788_read_multi_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
