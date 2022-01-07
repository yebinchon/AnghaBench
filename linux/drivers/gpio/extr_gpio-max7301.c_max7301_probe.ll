; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max7301.c_max7301_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max7301.c_max7301_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.max7301 = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max7301_spi_read = common dso_local global i32 0, align 4
@max7301_spi_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max7301_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max7301_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.max7301*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  store i32 16, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call i32 @spi_setup(%struct.spi_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.max7301* @devm_kzalloc(i32* %16, i32 16, i32 %17)
  store %struct.max7301* %18, %struct.max7301** %4, align 8
  %19 = load %struct.max7301*, %struct.max7301** %4, align 8
  %20 = icmp ne %struct.max7301* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %14
  %25 = load i32, i32* @max7301_spi_read, align 4
  %26 = load %struct.max7301*, %struct.max7301** %4, align 8
  %27 = getelementptr inbounds %struct.max7301, %struct.max7301* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @max7301_spi_write, align 4
  %29 = load %struct.max7301*, %struct.max7301** %4, align 8
  %30 = getelementptr inbounds %struct.max7301, %struct.max7301* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 1
  %33 = load %struct.max7301*, %struct.max7301** %4, align 8
  %34 = getelementptr inbounds %struct.max7301, %struct.max7301* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.max7301*, %struct.max7301** %4, align 8
  %36 = call i32 @__max730x_probe(%struct.max7301* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %24, %21, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.max7301* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @__max730x_probe(%struct.max7301*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
