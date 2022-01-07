; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc0832.c_adc0832_adc_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc0832.c_adc0832_adc_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc0832 = type { i32*, i32*, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc0832*, i32, i32)* @adc0832_adc_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc0832_adc_conversion(%struct.adc0832* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adc0832*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca i32, align 4
  store %struct.adc0832* %0, %struct.adc0832** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %12 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %11, i32 0, i32 3
  %13 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  store %struct.spi_device* %13, %struct.spi_device** %8, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  %15 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %16 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  %19 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %20 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %18, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  store i32 2, i32* %22, align 8
  %23 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %24 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %29 = call i32 @adc0831_adc_conversion(%struct.adc0832* %28)
  store i32 %29, i32* %4, align 4
  br label %101

30:                                               ; preds = %3
  %31 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %32 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = shl i32 1, %34
  %36 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %37 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %48

43:                                               ; preds = %30
  %44 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %45 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  br label %48

48:                                               ; preds = %43, %42
  %49 = phi i32 [ 0, %42 ], [ %47, %43 ]
  %50 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %51 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %6, align 4
  %57 = srem i32 %56, 2
  %58 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %59 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = shl i32 %57, %61
  %63 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %64 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %70 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %48
  %74 = load i32, i32* %6, align 4
  %75 = sdiv i32 %74, 2
  %76 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %77 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %73, %48
  %83 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %84 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %90 = call i32 @spi_sync_transfer(%struct.spi_device* %89, %struct.spi_transfer* %9, i32 1)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %101

95:                                               ; preds = %82
  %96 = load %struct.adc0832*, %struct.adc0832** %5, align 8
  %97 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %95, %93, %27
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @adc0831_adc_conversion(%struct.adc0832*) #1

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
