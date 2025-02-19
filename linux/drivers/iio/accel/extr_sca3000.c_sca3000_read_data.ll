; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [25 x i8] c"problem reading register\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*, i32, i32*, i32)* @sca3000_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_read_data(%struct.sca3000_state* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sca3000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.sca3000_state* %0, %struct.sca3000_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  %16 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %17 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %15, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i64 1
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  %23 = load i32*, i32** %8, align 8
  store i32* %23, i32** %22, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @SCA3000_READ_REG(i32 %25)
  %27 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %28 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %32 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %35 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %35)
  %37 = call i32 @spi_sync_transfer(%struct.TYPE_2__* %33, %struct.spi_transfer* %34, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %4
  %41 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %42 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @get_device(i32* %44)
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @SCA3000_READ_REG(i32) #1

declare dso_local i32 @spi_sync_transfer(%struct.TYPE_2__*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
