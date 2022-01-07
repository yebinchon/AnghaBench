; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_devio_spi.c_cxd2880_io_spi_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_devio_spi.c_cxd2880_io_spi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_io = type { i32, i64, i64, %struct.cxd2880_spi*, i32, i32, i32 }
%struct.cxd2880_spi = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cxd2880_io_spi_read_reg = common dso_local global i32 0, align 4
@cxd2880_io_spi_write_reg = common dso_local global i32 0, align 4
@cxd2880_io_common_write_one_reg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_io_spi_create(%struct.cxd2880_io* %0, %struct.cxd2880_spi* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_io*, align 8
  %6 = alloca %struct.cxd2880_spi*, align 8
  %7 = alloca i32, align 4
  store %struct.cxd2880_io* %0, %struct.cxd2880_io** %5, align 8
  store %struct.cxd2880_spi* %1, %struct.cxd2880_spi** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.cxd2880_io*, %struct.cxd2880_io** %5, align 8
  %9 = icmp ne %struct.cxd2880_io* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %6, align 8
  %12 = icmp ne %struct.cxd2880_spi* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %36

16:                                               ; preds = %10
  %17 = load i32, i32* @cxd2880_io_spi_read_reg, align 4
  %18 = load %struct.cxd2880_io*, %struct.cxd2880_io** %5, align 8
  %19 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @cxd2880_io_spi_write_reg, align 4
  %21 = load %struct.cxd2880_io*, %struct.cxd2880_io** %5, align 8
  %22 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @cxd2880_io_common_write_one_reg, align 4
  %24 = load %struct.cxd2880_io*, %struct.cxd2880_io** %5, align 8
  %25 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %6, align 8
  %27 = load %struct.cxd2880_io*, %struct.cxd2880_io** %5, align 8
  %28 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %27, i32 0, i32 3
  store %struct.cxd2880_spi* %26, %struct.cxd2880_spi** %28, align 8
  %29 = load %struct.cxd2880_io*, %struct.cxd2880_io** %5, align 8
  %30 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.cxd2880_io*, %struct.cxd2880_io** %5, align 8
  %32 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cxd2880_io*, %struct.cxd2880_io** %5, align 8
  %35 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %16, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
