; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc128s052.c_adc128_adc_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc128s052.c_adc128_adc_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc128 = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc128*, i32)* @adc128_adc_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc128_adc_conversion(%struct.adc128* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adc128*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adc128* %0, %struct.adc128** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.adc128*, %struct.adc128** %4, align 8
  %8 = getelementptr inbounds %struct.adc128, %struct.adc128* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 3
  %12 = load %struct.adc128*, %struct.adc128** %4, align 8
  %13 = getelementptr inbounds %struct.adc128, %struct.adc128* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.adc128*, %struct.adc128** %4, align 8
  %17 = getelementptr inbounds %struct.adc128, %struct.adc128* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.adc128*, %struct.adc128** %4, align 8
  %21 = getelementptr inbounds %struct.adc128, %struct.adc128* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.adc128*, %struct.adc128** %4, align 8
  %24 = getelementptr inbounds %struct.adc128, %struct.adc128* %23, i32 0, i32 0
  %25 = call i32 @spi_write(i32 %22, i32** %24, i32 2)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.adc128*, %struct.adc128** %4, align 8
  %30 = getelementptr inbounds %struct.adc128, %struct.adc128* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %61

33:                                               ; preds = %2
  %34 = load %struct.adc128*, %struct.adc128** %4, align 8
  %35 = getelementptr inbounds %struct.adc128, %struct.adc128* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.adc128*, %struct.adc128** %4, align 8
  %38 = getelementptr inbounds %struct.adc128, %struct.adc128* %37, i32 0, i32 0
  %39 = call i32 @spi_read(i32 %36, i32** %38, i32 2)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.adc128*, %struct.adc128** %4, align 8
  %41 = getelementptr inbounds %struct.adc128, %struct.adc128* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %61

47:                                               ; preds = %33
  %48 = load %struct.adc128*, %struct.adc128** %4, align 8
  %49 = getelementptr inbounds %struct.adc128, %struct.adc128* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = load %struct.adc128*, %struct.adc128** %4, align 8
  %55 = getelementptr inbounds %struct.adc128, %struct.adc128* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %53, %58
  %60 = and i32 %59, 4095
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %47, %45, %28
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_write(i32, i32**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spi_read(i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
