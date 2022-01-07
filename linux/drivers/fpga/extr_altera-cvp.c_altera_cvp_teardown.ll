; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, %struct.altera_cvp_conf* }
%struct.altera_cvp_conf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.altera_cvp_conf*)* }
%struct.fpga_image_info = type { i32 }

@VSE_CVP_PROG_CTRL = common dso_local global i32 0, align 4
@VSE_CVP_PROG_CTRL_START_XFER = common dso_local global i32 0, align 4
@VSE_CVP_PROG_CTRL_CONFIG = common dso_local global i32 0, align 4
@VSE_CVP_STATUS_CFG_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CFG_RDY == 0 timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*)* @altera_cvp_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_cvp_teardown(%struct.fpga_manager* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca %struct.fpga_manager*, align 8
  %4 = alloca %struct.fpga_image_info*, align 8
  %5 = alloca %struct.altera_cvp_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %3, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %4, align 8
  %8 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %9 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %8, i32 0, i32 1
  %10 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %9, align 8
  store %struct.altera_cvp_conf* %10, %struct.altera_cvp_conf** %5, align 8
  %11 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %5, align 8
  %12 = load i32, i32* @VSE_CVP_PROG_CTRL, align 4
  %13 = call i32 @altera_read_config_dword(%struct.altera_cvp_conf* %11, i32 %12, i32* %7)
  %14 = load i32, i32* @VSE_CVP_PROG_CTRL_START_XFER, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %5, align 8
  %19 = load i32, i32* @VSE_CVP_PROG_CTRL, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @altera_write_config_dword(%struct.altera_cvp_conf* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @VSE_CVP_PROG_CTRL_CONFIG, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %5, align 8
  %27 = load i32, i32* @VSE_CVP_PROG_CTRL, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @altera_write_config_dword(%struct.altera_cvp_conf* %26, i32 %27, i32 %28)
  %30 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %5, align 8
  %31 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (%struct.altera_cvp_conf*)*, i32 (%struct.altera_cvp_conf*)** %33, align 8
  %35 = icmp ne i32 (%struct.altera_cvp_conf*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %5, align 8
  %38 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.altera_cvp_conf*)*, i32 (%struct.altera_cvp_conf*)** %40, align 8
  %42 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %5, align 8
  %43 = call i32 %41(%struct.altera_cvp_conf* %42)
  br label %44

44:                                               ; preds = %36, %2
  %45 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %5, align 8
  %46 = load i32, i32* @VSE_CVP_STATUS_CFG_RDY, align 4
  %47 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %5, align 8
  %48 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @altera_cvp_wait_status(%struct.altera_cvp_conf* %45, i32 %46, i32 0, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %57 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %44
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @altera_read_config_dword(%struct.altera_cvp_conf*, i32, i32*) #1

declare dso_local i32 @altera_write_config_dword(%struct.altera_cvp_conf*, i32, i32) #1

declare dso_local i32 @altera_cvp_wait_status(%struct.altera_cvp_conf*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
