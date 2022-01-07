; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_spi_device.c_cxd2880_spi_device_create_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_spi_device.c_cxd2880_spi_device_create_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_spi = type { %struct.cxd2880_spi_device*, i64, i32, i32, i32* }
%struct.cxd2880_spi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cxd2880_spi_device_write = common dso_local global i32 0, align 4
@cxd2880_spi_device_write_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_spi_device_create_spi(%struct.cxd2880_spi* %0, %struct.cxd2880_spi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_spi*, align 8
  %5 = alloca %struct.cxd2880_spi_device*, align 8
  store %struct.cxd2880_spi* %0, %struct.cxd2880_spi** %4, align 8
  store %struct.cxd2880_spi_device* %1, %struct.cxd2880_spi_device** %5, align 8
  %6 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %4, align 8
  %7 = icmp ne %struct.cxd2880_spi* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.cxd2880_spi_device*, %struct.cxd2880_spi_device** %5, align 8
  %10 = icmp ne %struct.cxd2880_spi_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %8
  %15 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %4, align 8
  %16 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %15, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @cxd2880_spi_device_write, align 4
  %18 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %4, align 8
  %19 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @cxd2880_spi_device_write_read, align 4
  %21 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %4, align 8
  %22 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %4, align 8
  %24 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.cxd2880_spi_device*, %struct.cxd2880_spi_device** %5, align 8
  %26 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %4, align 8
  %27 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %26, i32 0, i32 0
  store %struct.cxd2880_spi_device* %25, %struct.cxd2880_spi_device** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %14, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
