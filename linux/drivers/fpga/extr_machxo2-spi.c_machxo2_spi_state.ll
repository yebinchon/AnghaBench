; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_machxo2-spi.c_machxo2_spi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_machxo2-spi.c_machxo2_spi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.spi_device* }
%struct.spi_device = type { i32 }

@BUSY = common dso_local global i32 0, align 4
@DONE = common dso_local global i32 0, align 4
@ENOERR = common dso_local global i64 0, align 8
@FPGA_MGR_STATE_OPERATING = common dso_local global i32 0, align 4
@FPGA_MGR_STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*)* @machxo2_spi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machxo2_spi_state(%struct.fpga_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_manager*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i64, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %3, align 8
  %6 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %7 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %6, i32 0, i32 0
  %8 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  store %struct.spi_device* %8, %struct.spi_device** %4, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %10 = call i32 @get_status(%struct.spi_device* %9, i64* %5)
  %11 = load i32, i32* @BUSY, align 4
  %12 = call i64 @test_bit(i32 %11, i64* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @DONE, align 4
  %16 = call i64 @test_bit(i32 %15, i64* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = call i64 @get_err(i64* %5)
  %20 = load i64, i64* @ENOERR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @FPGA_MGR_STATE_OPERATING, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %18, %14, %1
  %25 = load i32, i32* @FPGA_MGR_STATE_UNKNOWN, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @get_status(%struct.spi_device*, i64*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i64 @get_err(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
