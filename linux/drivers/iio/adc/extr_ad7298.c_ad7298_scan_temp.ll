; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_scan_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_scan_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7298_state = type { i32, i32 }

@AD7298_WRITE = common dso_local global i32 0, align 4
@AD7298_TSENSE = common dso_local global i32 0, align 4
@AD7298_TAVG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7298_state*, i32*)* @ad7298_scan_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7298_scan_temp(%struct.ad7298_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7298_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ad7298_state* %0, %struct.ad7298_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @AD7298_WRITE, align 4
  %9 = load i32, i32* @AD7298_TSENSE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @AD7298_TAVG, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.ad7298_state*, %struct.ad7298_state** %4, align 8
  %14 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  %17 = call i32 @cpu_to_be16(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ad7298_state*, %struct.ad7298_state** %4, align 8
  %19 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @spi_write(i32 %20, i32* %7, i32 2)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %2
  %27 = call i32 @cpu_to_be16(i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ad7298_state*, %struct.ad7298_state** %4, align 8
  %29 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @spi_write(i32 %30, i32* %7, i32 2)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %51

36:                                               ; preds = %26
  %37 = call i32 @usleep_range(i32 101, i32 1000)
  %38 = load %struct.ad7298_state*, %struct.ad7298_state** %4, align 8
  %39 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @spi_read(i32 %40, i32* %7, i32 2)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @be16_to_cpu(i32 %47)
  %49 = call i32 @sign_extend32(i32 %48, i32 11)
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %44, %34, %24
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @spi_read(i32, i32*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
