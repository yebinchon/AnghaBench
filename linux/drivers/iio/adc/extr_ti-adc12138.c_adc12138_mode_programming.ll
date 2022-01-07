; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_mode_programming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_mode_programming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc12138 = type { i32*, i64, i32, i32 }
%struct.spi_transfer = type { i32*, i32, i32 }

@adc12138 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc12138*, i32, i8*, i32)* @adc12138_mode_programming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc12138_mode_programming(%struct.adc12138* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adc12138*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_transfer, align 8
  %11 = alloca i32, align 4
  store %struct.adc12138* %0, %struct.adc12138** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  %13 = load %struct.adc12138*, %struct.adc12138** %6, align 8
  %14 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  %19 = load %struct.adc12138*, %struct.adc12138** %6, align 8
  %20 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  %22 = load %struct.adc12138*, %struct.adc12138** %6, align 8
  %23 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @adc12138, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 192
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 15
  %32 = shl i32 %31, 2
  %33 = or i32 %29, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %27, %4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.adc12138*, %struct.adc12138** %6, align 8
  %37 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.adc12138*, %struct.adc12138** %6, align 8
  %41 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @spi_sync_transfer(i32 %42, %struct.spi_transfer* %10, i32 1)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %55

48:                                               ; preds = %34
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.adc12138*, %struct.adc12138** %6, align 8
  %51 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @memcpy(i8* %49, i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %48, %46
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
