; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7311.c_ti_dac_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7311.c_ti_dac_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_dac_chip = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_dac_chip*, i32, i32)* @ti_dac_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dac_cmd(%struct.ti_dac_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ti_dac_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ti_dac_chip* %0, %struct.ti_dac_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %4, align 8
  %9 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 14, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %12, %13
  %15 = and i32 %14, 255
  %16 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %4, align 8
  %17 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 6
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 8, %23
  %25 = ashr i32 %22, %24
  %26 = or i32 %21, %25
  %27 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %4, align 8
  %28 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %4, align 8
  %32 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %4, align 8
  %35 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @spi_write(i32 %33, i32* %36, i32 2)
  ret i32 %37
}

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
