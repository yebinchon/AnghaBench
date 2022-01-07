; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_spi_device.c_cxd2880_spi_device_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_spi_device.c_cxd2880_spi_device_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_spi_device = type { %struct.spi_device* }
%struct.spi_device = type { i32, i32, i32 }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@SPI_MODE_1 = common dso_local global i32 0, align 4
@SPI_MODE_2 = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"spi_setup failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_spi_device_initialize(%struct.cxd2880_spi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.spi_device*, align 8
  store %struct.cxd2880_spi_device* %0, %struct.cxd2880_spi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.cxd2880_spi_device*, %struct.cxd2880_spi_device** %5, align 8
  %11 = getelementptr inbounds %struct.cxd2880_spi_device, %struct.cxd2880_spi_device* %10, i32 0, i32 0
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %9, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %30 [
    i32 131, label %14
    i32 130, label %18
    i32 129, label %22
    i32 128, label %26
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @SPI_MODE_0, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load i32, i32* @SPI_MODE_1, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* @SPI_MODE_2, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* @SPI_MODE_3, align 4
  %28 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %49

33:                                               ; preds = %26, %22, %18, %14
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  store i32 8, i32* %38, align 4
  %39 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %40 = call i32 @spi_setup(%struct.spi_device* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43, %30
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
