; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc084s021.c_adc084s021_adc_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc084s021.c_adc084s021_adc_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc084s021 = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc084s021*, i8*)* @adc084s021_adc_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc084s021_adc_conversion(%struct.adc084s021* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adc084s021*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.adc084s021* %0, %struct.adc084s021** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.adc084s021*, %struct.adc084s021** %4, align 8
  %11 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %13, 1
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load %struct.adc084s021*, %struct.adc084s021** %4, align 8
  %19 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.adc084s021*, %struct.adc084s021** %4, align 8
  %22 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %21, i32 0, i32 1
  %23 = call i32 @spi_sync(i32 %20, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.adc084s021*, %struct.adc084s021** %4, align 8
  %35 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @spi_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
