; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5481.c_max5481_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5481.c_max5481_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max5481_data = type { i32*, %struct.spi_device* }
%struct.spi_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max5481_data*, i32, i32)* @max5481_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5481_write_cmd(%struct.max5481_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max5481_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_device*, align 8
  store %struct.max5481_data* %0, %struct.max5481_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %10 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %9, i32 0, i32 1
  %11 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  store %struct.spi_device* %11, %struct.spi_device** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %14 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %43 [
    i32 128, label %18
    i32 130, label %37
    i32 129, label %37
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 2
  %21 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %22 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 3
  %27 = shl i32 %26, 6
  %28 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %29 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %27, i32* %31, align 4
  %32 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %33 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %34 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @spi_write(%struct.spi_device* %32, i32* %35, i32 3)
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %3, %3
  %38 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %39 = load %struct.max5481_data*, %struct.max5481_data** %5, align 8
  %40 = getelementptr inbounds %struct.max5481_data, %struct.max5481_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @spi_write(%struct.spi_device* %38, i32* %41, i32 1)
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %37, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
