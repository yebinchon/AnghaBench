; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ltc2632.c_ltc2632_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ltc2632.c_ltc2632_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32, i32, i32, i32)* @ltc2632_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2632_spi_write(%struct.spi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  store %struct.spi_device* %0, %struct.spi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 20
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 %15, 16
  %17 = or i32 %14, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = ashr i32 %22, 16
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 8
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %32 = call i32 @spi_write(%struct.spi_device* %30, i32* %31, i32 12)
  ret i32 %32
}

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
