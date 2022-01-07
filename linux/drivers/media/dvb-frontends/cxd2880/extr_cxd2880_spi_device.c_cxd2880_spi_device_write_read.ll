; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_spi_device.c_cxd2880_spi_device_write_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_spi_device.c_cxd2880_spi_device_write_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_spi = type { %struct.cxd2880_spi_device* }
%struct.cxd2880_spi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_spi*, i32*, i32, i32*, i32)* @cxd2880_spi_device_write_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_spi_device_write_read(%struct.cxd2880_spi* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_spi*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cxd2880_spi_device*, align 8
  %13 = alloca i32, align 4
  store %struct.cxd2880_spi* %0, %struct.cxd2880_spi** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.cxd2880_spi_device* null, %struct.cxd2880_spi_device** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %7, align 8
  %15 = icmp ne %struct.cxd2880_spi* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %5
  %17 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %7, align 8
  %18 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %17, i32 0, i32 0
  %19 = load %struct.cxd2880_spi_device*, %struct.cxd2880_spi_device** %18, align 8
  %20 = icmp ne %struct.cxd2880_spi_device* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %27, %24, %21, %16, %5
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %54

36:                                               ; preds = %30
  %37 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %7, align 8
  %38 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %37, i32 0, i32 0
  %39 = load %struct.cxd2880_spi_device*, %struct.cxd2880_spi_device** %38, align 8
  store %struct.cxd2880_spi_device* %39, %struct.cxd2880_spi_device** %12, align 8
  %40 = load %struct.cxd2880_spi_device*, %struct.cxd2880_spi_device** %12, align 8
  %41 = getelementptr inbounds %struct.cxd2880_spi_device, %struct.cxd2880_spi_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @spi_write_then_read(i32 %42, i32* %43, i32 %44, i32* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %54

53:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %50, %33
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @spi_write_then_read(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
