; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7877.c_ad7877_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7877.c_ad7877_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7877 = type { i32*, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@AD7877_SEQ_XPOS = common dso_local global i64 0, align 8
@MAX_12BIT = common dso_local global i32 0, align 4
@AD7877_SEQ_YPOS = common dso_local global i64 0, align 8
@AD7877_SEQ_Z1 = common dso_local global i64 0, align 8
@AD7877_SEQ_Z2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7877*)* @ad7877_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7877_process_data(%struct.ad7877* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7877*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ad7877* %0, %struct.ad7877** %3, align 8
  %10 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %11 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %10, i32 0, i32 4
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %14 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @AD7877_SEQ_XPOS, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX_12BIT, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %22 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @AD7877_SEQ_YPOS, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAX_12BIT, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %30 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @AD7877_SEQ_Z1, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX_12BIT, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %38 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @AD7877_SEQ_Z2, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX_12BIT, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %1
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %1
  %51 = phi i1 [ false, %1 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = mul i32 %58, %59
  %61 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %62 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = mul i32 %60, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %5, align 4
  %67 = udiv i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 2047
  %70 = lshr i32 %69, 12
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %73 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ugt i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %55
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %106

79:                                               ; preds = %55
  %80 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %81 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %80, i32 0, i32 3
  %82 = call i32 @timer_pending(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %86 = load i32, i32* @BTN_TOUCH, align 4
  %87 = call i32 @input_report_key(%struct.input_dev* %85, i32 %86, i32 1)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %90 = load i32, i32* @ABS_X, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @input_report_abs(%struct.input_dev* %89, i32 %90, i32 %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %94 = load i32, i32* @ABS_Y, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @input_report_abs(%struct.input_dev* %93, i32 %94, i32 %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %98 = load i32, i32* @ABS_PRESSURE, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @input_report_abs(%struct.input_dev* %97, i32 %98, i32 %99)
  %101 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %102 = call i32 @input_sync(%struct.input_dev* %101)
  store i32 0, i32* %2, align 4
  br label %106

103:                                              ; preds = %50
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %88, %76
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
