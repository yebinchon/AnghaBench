; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7612.c_dac7612_cmd_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7612.c_dac7612_cmd_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dac7612 = type { i32*, i32*, i32, i32 }

@DAC7612_START = common dso_local global i32 0, align 4
@DAC7612_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dac7612*, i32, i32)* @dac7612_cmd_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac7612_cmd_single(%struct.dac7612* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dac7612*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dac7612* %0, %struct.dac7612** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @DAC7612_START, align 4
  %10 = call i32 @BIT(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DAC7612_ADDRESS, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %10, %13
  %15 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %16 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 8
  %21 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %22 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 255
  %29 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %30 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %35 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %41 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %44 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @spi_write(i32 %42, i32* %45, i32 8)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %60

51:                                               ; preds = %3
  %52 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %53 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @gpiod_set_value(i32 %54, i32 1)
  %56 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %57 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @gpiod_set_value(i32 %58, i32 0)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %49
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
