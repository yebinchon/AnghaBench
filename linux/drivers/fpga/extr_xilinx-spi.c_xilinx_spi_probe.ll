; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-spi.c_xilinx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-spi.c_xilinx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.xilinx_spi_conf = type { i8*, i8*, %struct.spi_device* }
%struct.fpga_manager = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"prog_b\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get PROGRAM_B gpio: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get DONE gpio: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Xilinx Slave Serial FPGA Manager\00", align 1
@xilinx_spi_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @xilinx_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.xilinx_spi_conf*, align 8
  %5 = alloca %struct.fpga_manager*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.xilinx_spi_conf* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.xilinx_spi_conf* %9, %struct.xilinx_spi_conf** %4, align 8
  %10 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %11 = icmp ne %struct.xilinx_spi_conf* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %18 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %17, i32 0, i32 2
  store %struct.spi_device* %16, %struct.spi_device** %18, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %22 = call i8* @devm_gpiod_get(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %24 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %26 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %15
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %34 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  %37 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %39 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %82

42:                                               ; preds = %15
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = load i32, i32* @GPIOD_IN, align 4
  %46 = call i8* @devm_gpiod_get(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %48 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %50 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %42
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %58 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  %61 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %63 = getelementptr inbounds %struct.xilinx_spi_conf, %struct.xilinx_spi_conf* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %82

66:                                               ; preds = %42
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 0
  %69 = load %struct.xilinx_spi_conf*, %struct.xilinx_spi_conf** %4, align 8
  %70 = call %struct.fpga_manager* @devm_fpga_mgr_create(i32* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32* @xilinx_spi_ops, %struct.xilinx_spi_conf* %69)
  store %struct.fpga_manager* %70, %struct.fpga_manager** %5, align 8
  %71 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %72 = icmp ne %struct.fpga_manager* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %82

76:                                               ; preds = %66
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %79 = call i32 @spi_set_drvdata(%struct.spi_device* %77, %struct.fpga_manager* %78)
  %80 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %81 = call i32 @fpga_mgr_register(%struct.fpga_manager* %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %76, %73, %54, %30, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.xilinx_spi_conf* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.fpga_manager* @devm_fpga_mgr_create(i32*, i8*, i32*, %struct.xilinx_spi_conf*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
