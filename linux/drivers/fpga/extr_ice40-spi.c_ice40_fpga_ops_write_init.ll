; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_ice40-spi.c_ice40_fpga_ops_write_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_ice40-spi.c_ice40_fpga_ops_write_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.ice40_fpga_priv* }
%struct.ice40_fpga_priv = type { i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32, i32 }
%struct.fpga_image_info = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32 }

@ICE40_SPI_RESET_DELAY = common dso_local global i32 0, align 4
@ICE40_SPI_HOUSEKEEPING_DELAY = common dso_local global i32 0, align 4
@FPGA_MGR_PARTIAL_RECONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Partial reconfiguration is not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Device reset failed, CDONE is asserted\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)* @ice40_fpga_ops_write_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice40_fpga_ops_write_init(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.fpga_image_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice40_fpga_priv*, align 8
  %11 = alloca %struct.spi_device*, align 8
  %12 = alloca %struct.spi_message, align 4
  %13 = alloca %struct.spi_transfer, align 4
  %14 = alloca %struct.spi_transfer, align 4
  %15 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %6, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %17 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %16, i32 0, i32 0
  %18 = load %struct.ice40_fpga_priv*, %struct.ice40_fpga_priv** %17, align 8
  store %struct.ice40_fpga_priv* %18, %struct.ice40_fpga_priv** %10, align 8
  %19 = load %struct.ice40_fpga_priv*, %struct.ice40_fpga_priv** %10, align 8
  %20 = getelementptr inbounds %struct.ice40_fpga_priv, %struct.ice40_fpga_priv* %19, i32 0, i32 2
  %21 = load %struct.spi_device*, %struct.spi_device** %20, align 8
  store %struct.spi_device* %21, %struct.spi_device** %11, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  %24 = load i32, i32* @ICE40_SPI_RESET_DELAY, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 1
  %27 = load i32, i32* @ICE40_SPI_HOUSEKEEPING_DELAY, align 4
  store i32 %27, i32* %26, align 4
  %28 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %29 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FPGA_MGR_PARTIAL_RECONFIG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 1
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %83

40:                                               ; preds = %4
  %41 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @spi_bus_lock(i32 %43)
  %45 = load %struct.ice40_fpga_priv*, %struct.ice40_fpga_priv** %10, align 8
  %46 = getelementptr inbounds %struct.ice40_fpga_priv, %struct.ice40_fpga_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpiod_set_value(i32 %47, i32 1)
  %49 = call i32 @spi_message_init(%struct.spi_message* %12)
  %50 = call i32 @spi_message_add_tail(%struct.spi_transfer* %13, %struct.spi_message* %12)
  %51 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  %52 = call i32 @spi_sync_locked(%struct.spi_device* %51, %struct.spi_message* %12)
  store i32 %52, i32* %15, align 4
  %53 = load %struct.ice40_fpga_priv*, %struct.ice40_fpga_priv** %10, align 8
  %54 = getelementptr inbounds %struct.ice40_fpga_priv, %struct.ice40_fpga_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gpiod_set_value(i32 %55, i32 0)
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  br label %77

60:                                               ; preds = %40
  %61 = load %struct.ice40_fpga_priv*, %struct.ice40_fpga_priv** %10, align 8
  %62 = getelementptr inbounds %struct.ice40_fpga_priv, %struct.ice40_fpga_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @gpiod_get_value(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 1
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %15, align 4
  br label %77

72:                                               ; preds = %60
  %73 = call i32 @spi_message_init(%struct.spi_message* %12)
  %74 = call i32 @spi_message_add_tail(%struct.spi_transfer* %14, %struct.spi_message* %12)
  %75 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  %76 = call i32 @spi_sync_locked(%struct.spi_device* %75, %struct.spi_message* %12)
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %72, %66, %59
  %78 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @spi_bus_unlock(i32 %80)
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %77, %34
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spi_bus_lock(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync_locked(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @spi_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
