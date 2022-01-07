; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-spi.c_ad714x_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-spi.c_ad714x_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.ad714x_chip = type { i32 }

@BUS_SPI = common dso_local global i32 0, align 4
@ad714x_spi_read = common dso_local global i32 0, align 4
@ad714x_spi_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad714x_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad714x_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad714x_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  store i32 8, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call i32 @spi_setup(%struct.spi_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 2
  %17 = load i32, i32* @BUS_SPI, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ad714x_spi_read, align 4
  %22 = load i32, i32* @ad714x_spi_write, align 4
  %23 = call %struct.ad714x_chip* @ad714x_probe(i32* %16, i32 %17, i32 %20, i32 %21, i32 %22)
  store %struct.ad714x_chip* %23, %struct.ad714x_chip** %4, align 8
  %24 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %25 = call i64 @IS_ERR(%struct.ad714x_chip* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %29 = call i32 @PTR_ERR(%struct.ad714x_chip* %28)
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %14
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %33 = call i32 @spi_set_drvdata(%struct.spi_device* %31, %struct.ad714x_chip* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %27, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.ad714x_chip* @ad714x_probe(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ad714x_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.ad714x_chip*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ad714x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
