; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_spi_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_spi_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7768_state = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7768_state*, i32, i32)* @ad7768_spi_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7768_spi_reg_read(%struct.ad7768_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7768_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ad7768_state* %0, %struct.ad7768_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = mul i32 8, %10
  %12 = sub i32 32, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @AD7768_RD_FLAG_MSK(i32 %13)
  %15 = load %struct.ad7768_state*, %struct.ad7768_state** %5, align 8
  %16 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %14, i32* %19, align 4
  %20 = load %struct.ad7768_state*, %struct.ad7768_state** %5, align 8
  %21 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ad7768_state*, %struct.ad7768_state** %5, align 8
  %24 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ad7768_state*, %struct.ad7768_state** %5, align 8
  %28 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @spi_write_then_read(i32 %22, i32* %26, i32 1, i32* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.ad7768_state*, %struct.ad7768_state** %5, align 8
  %38 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = lshr i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %34
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @AD7768_RD_FLAG_MSK(i32) #1

declare dso_local i32 @spi_write_then_read(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
