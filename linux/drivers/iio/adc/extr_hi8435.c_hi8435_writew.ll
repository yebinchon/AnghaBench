; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hi8435.c_hi8435_writew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hi8435.c_hi8435_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hi8435_priv = type { i32*, i32 }

@HI8435_WRITE_OPCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hi8435_priv*, i32, i32)* @hi8435_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi8435_writew(%struct.hi8435_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hi8435_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hi8435_priv* %0, %struct.hi8435_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HI8435_WRITE_OPCODE, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.hi8435_priv*, %struct.hi8435_priv** %4, align 8
  %11 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = load %struct.hi8435_priv*, %struct.hi8435_priv** %4, align 8
  %18 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  %23 = load %struct.hi8435_priv*, %struct.hi8435_priv** %4, align 8
  %24 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %22, i32* %26, align 4
  %27 = load %struct.hi8435_priv*, %struct.hi8435_priv** %4, align 8
  %28 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hi8435_priv*, %struct.hi8435_priv** %4, align 8
  %31 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @spi_write(i32 %29, i32* %32, i32 3)
  ret i32 %33
}

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
