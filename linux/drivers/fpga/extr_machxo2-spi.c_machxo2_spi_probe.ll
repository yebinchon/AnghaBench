; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_machxo2-spi.c_machxo2_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_machxo2-spi.c_machxo2_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, %struct.device }
%struct.device = type { i32 }
%struct.fpga_manager = type { i32 }

@MACHXO2_MAX_SPEED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Speed is too high\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Lattice MachXO2 SPI FPGA Manager\00", align 1
@machxo2_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @machxo2_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machxo2_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fpga_manager*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MACHXO2_MAX_SPEED, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = call %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* @machxo2_ops, %struct.spi_device* %20)
  store %struct.fpga_manager* %21, %struct.fpga_manager** %5, align 8
  %22 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %23 = icmp ne %struct.fpga_manager* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %30 = call i32 @spi_set_drvdata(%struct.spi_device* %28, %struct.fpga_manager* %29)
  %31 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %32 = call i32 @fpga_mgr_register(%struct.fpga_manager* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %24, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device*, i8*, i32*, %struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
