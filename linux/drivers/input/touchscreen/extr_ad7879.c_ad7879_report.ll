; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c_ad7879_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c_ad7879_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7879 = type { i32*, i32, i32, i32, i32, i32, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@AD7879_SEQ_XPOS = common dso_local global i64 0, align 8
@MAX_12BIT = common dso_local global i32 0, align 4
@AD7879_SEQ_YPOS = common dso_local global i64 0, align 8
@AD7879_SEQ_Z1 = common dso_local global i64 0, align 8
@AD7879_SEQ_Z2 = common dso_local global i64 0, align 8
@ABS_PRESSURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7879*)* @ad7879_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7879_report(%struct.ad7879* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7879*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ad7879* %0, %struct.ad7879** %3, align 8
  %10 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %11 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %10, i32 0, i32 7
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %14 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @AD7879_SEQ_XPOS, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX_12BIT, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %22 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @AD7879_SEQ_YPOS, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAX_12BIT, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %30 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @AD7879_SEQ_Z1, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX_12BIT, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %38 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @AD7879_SEQ_Z2, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX_12BIT, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %46 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %1
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @swap(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %1
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %127

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = mul i32 %67, %68
  %70 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %71 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = mul i32 %69, %72
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = udiv i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 2047
  %79 = lshr i32 %78, 12
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = load i32, i32* @ABS_PRESSURE, align 4
  %83 = call i32 @input_abs_get_max(%struct.input_dev* %81, i32 %82)
  %84 = icmp ugt i32 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %64
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %130

88:                                               ; preds = %64
  %89 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %90 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %89, i32 0, i32 5
  %91 = call i64 @timer_pending(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %88
  %94 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %95 = load i32, i32* @BTN_TOUCH, align 4
  %96 = call i32 @input_report_key(%struct.input_dev* %94, i32 %95, i32 1)
  %97 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %98 = load i32, i32* @ABS_X, align 4
  %99 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %100 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @input_report_abs(%struct.input_dev* %97, i32 %98, i32 %101)
  %103 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %104 = load i32, i32* @ABS_Y, align 4
  %105 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %106 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @input_report_abs(%struct.input_dev* %103, i32 %104, i32 %107)
  %109 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %110 = load i32, i32* @ABS_PRESSURE, align 4
  %111 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %112 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @input_report_abs(%struct.input_dev* %109, i32 %110, i32 %113)
  %115 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %116 = call i32 @input_sync(%struct.input_dev* %115)
  br label %117

117:                                              ; preds = %93, %88
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %120 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %123 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %126 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  store i32 0, i32* %2, align 4
  br label %130

127:                                              ; preds = %59
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %127, %117, %85
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @input_abs_get_max(%struct.input_dev*, i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
