; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-spi.c_xilinx_spi_write_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-spi.c_xilinx_spi_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, %struct.xilinx_spi_conf* }
%struct.xilinx_spi_conf = type { i32 }
%struct.fpga_image_info = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Timeout after config data transfer.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*)* @xilinx_spi_write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_spi_write_complete(%struct.fpga_manager* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_manager*, align 8
  %5 = alloca %struct.fpga_image_info*, align 8
  %6 = alloca %struct.xilinx_spi_conf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %4, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %5, align 8
  %9 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %10 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %9, i32 0, i32 1
  %11 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %10, align 8
  store %struct.xilinx_spi_conf* %11, %struct.xilinx_spi_conf** %6, align 8
  %12 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %6, align 8
  %13 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @gpiod_get_value(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %6, align 8
  %19 = call i32 @xilinx_spi_apply_cclk_cycles(%struct.xilinx_spi_conf* %18)
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %23 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @usecs_to_jiffies(i32 %24)
  %26 = add i64 %21, %25
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %48, %20
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @time_before(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %6, align 8
  %34 = call i32 @xilinx_spi_apply_cclk_cycles(%struct.xilinx_spi_conf* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %32
  %40 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %6, align 8
  %41 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @gpiod_get_value(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %6, align 8
  %47 = call i32 @xilinx_spi_apply_cclk_cycles(%struct.xilinx_spi_conf* %46)
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %39
  br label %27

49:                                               ; preds = %27
  %50 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %51 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %45, %37, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @xilinx_spi_apply_cclk_cycles(%struct.xilinx_spi_conf*) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
