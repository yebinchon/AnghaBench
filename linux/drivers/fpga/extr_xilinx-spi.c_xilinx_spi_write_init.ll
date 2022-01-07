; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-spi.c_xilinx_spi_write_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-spi.c_xilinx_spi_write_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, %struct.xilinx_spi_conf* }
%struct.xilinx_spi_conf = type { i32, i32 }
%struct.fpga_image_info = type { i32 }

@FPGA_MGR_PARTIAL_RECONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Partial reconfiguration not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unexpected DONE pin state...\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)* @xilinx_spi_write_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_spi_write_init(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.fpga_image_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xilinx_spi_conf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %6, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %14 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %13, i32 0, i32 1
  %15 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %14, align 8
  store %struct.xilinx_spi_conf* %15, %struct.xilinx_spi_conf** %10, align 8
  store i64 7500, i64* %11, align 8
  store i64 1, i64* %12, align 8
  %16 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %17 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FPGA_MGR_PARTIAL_RECONFIG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %24 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %51

28:                                               ; preds = %4
  %29 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %10, align 8
  %30 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpiod_set_value(i32 %31, i32 1)
  %33 = call i32 @udelay(i64 1)
  %34 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %10, align 8
  %35 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpiod_set_value(i32 %36, i32 0)
  %38 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %10, align 8
  %39 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @gpiod_get_value(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %45 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %51

49:                                               ; preds = %28
  %50 = call i32 @usleep_range(i64 7500, i64 7600)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %43, %22
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
