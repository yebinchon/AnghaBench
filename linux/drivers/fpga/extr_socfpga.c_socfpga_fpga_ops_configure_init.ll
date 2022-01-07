; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_ops_configure_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_ops_configure_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, %struct.socfpga_fpga_priv* }
%struct.socfpga_fpga_priv = type { i32 }
%struct.fpga_image_info = type { i32 }

@FPGA_MGR_PARTIAL_RECONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Partial reconfiguration not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_STAT_CFG = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_MON_NSTATUS = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_CTL_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_CTL_AXICFGEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)* @socfpga_fpga_ops_configure_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_ops_configure_init(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.fpga_image_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.socfpga_fpga_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %6, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %13 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %12, i32 0, i32 1
  %14 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %13, align 8
  store %struct.socfpga_fpga_priv* %14, %struct.socfpga_fpga_priv** %10, align 8
  %15 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %16 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FPGA_MGR_PARTIAL_RECONFIG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %23 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %51

27:                                               ; preds = %4
  %28 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %29 = call i32 @socfpga_fpga_reset(%struct.fpga_manager* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %51

34:                                               ; preds = %27
  %35 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %10, align 8
  %36 = load i32, i32* @SOCFPGA_FPGMGR_STAT_CFG, align 4
  %37 = call i64 @socfpga_fpga_wait_for_state(%struct.socfpga_fpga_priv* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %34
  %43 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %10, align 8
  %44 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST, align 4
  %45 = load i32, i32* @SOCFPGA_FPGMGR_MON_NSTATUS, align 4
  %46 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %43, i32 %44, i32 %45)
  %47 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %10, align 8
  %48 = load i32, i32* @SOCFPGA_FPGMGR_CTL_OFST, align 4
  %49 = load i32, i32* @SOCFPGA_FPGMGR_CTL_AXICFGEN, align 4
  %50 = call i32 @socfpga_fpga_set_bitsl(%struct.socfpga_fpga_priv* %47, i32 %48, i32 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %39, %32, %21
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @socfpga_fpga_reset(%struct.fpga_manager*) #1

declare dso_local i64 @socfpga_fpga_wait_for_state(%struct.socfpga_fpga_priv*, i32) #1

declare dso_local i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv*, i32, i32) #1

declare dso_local i32 @socfpga_fpga_set_bitsl(%struct.socfpga_fpga_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
