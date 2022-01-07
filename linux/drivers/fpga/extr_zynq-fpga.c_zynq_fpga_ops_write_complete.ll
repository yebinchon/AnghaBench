; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_fpga_ops_write_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_fpga_ops_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.zynq_fpga_priv* }
%struct.zynq_fpga_priv = type { i32, i32 }
%struct.fpga_image_info = type { i32 }

@CTRL_OFFSET = common dso_local global i32 0, align 4
@CTRL_PCAP_PR_MASK = common dso_local global i32 0, align 4
@INT_STS_OFFSET = common dso_local global i32 0, align 4
@IXR_PCFG_DONE_MASK = common dso_local global i32 0, align 4
@INIT_POLL_DELAY = common dso_local global i32 0, align 4
@INIT_POLL_TIMEOUT = common dso_local global i32 0, align 4
@FPGA_MGR_PARTIAL_RECONFIG = common dso_local global i32 0, align 4
@SLCR_LVL_SHFTR_EN_OFFSET = common dso_local global i32 0, align 4
@LVL_SHFTR_ENABLE_PL_TO_PS = common dso_local global i32 0, align 4
@SLCR_FPGA_RST_CTRL_OFFSET = common dso_local global i32 0, align 4
@FPGA_RST_NONE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*)* @zynq_fpga_ops_write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_fpga_ops_write_complete(%struct.fpga_manager* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_manager*, align 8
  %5 = alloca %struct.fpga_image_info*, align 8
  %6 = alloca %struct.zynq_fpga_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %4, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %5, align 8
  %9 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %10 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %9, i32 0, i32 0
  %11 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %10, align 8
  store %struct.zynq_fpga_priv* %11, %struct.zynq_fpga_priv** %6, align 8
  %12 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %13 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_enable(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %22 = load i32, i32* @CTRL_OFFSET, align 4
  %23 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %24 = load i32, i32* @CTRL_OFFSET, align 4
  %25 = call i32 @zynq_fpga_read(%struct.zynq_fpga_priv* %23, i32 %24)
  %26 = load i32, i32* @CTRL_PCAP_PR_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @zynq_fpga_write(%struct.zynq_fpga_priv* %21, i32 %22, i32 %28)
  %30 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %31 = load i32, i32* @INT_STS_OFFSET, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @IXR_PCFG_DONE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @INIT_POLL_DELAY, align 4
  %37 = load i32, i32* @INIT_POLL_TIMEOUT, align 4
  %38 = call i32 @zynq_fpga_poll_timeout(%struct.zynq_fpga_priv* %30, i32 %31, i32 %32, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %40 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %20
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %68

47:                                               ; preds = %20
  %48 = load %struct.fpga_image_info*, %struct.fpga_image_info** %5, align 8
  %49 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FPGA_MGR_PARTIAL_RECONFIG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %47
  %55 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %56 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SLCR_LVL_SHFTR_EN_OFFSET, align 4
  %59 = load i32, i32* @LVL_SHFTR_ENABLE_PL_TO_PS, align 4
  %60 = call i32 @regmap_write(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %62 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SLCR_FPGA_RST_CTRL_OFFSET, align 4
  %65 = load i32, i32* @FPGA_RST_NONE_MASK, align 4
  %66 = call i32 @regmap_write(i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %54, %47
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %45, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @zynq_fpga_write(%struct.zynq_fpga_priv*, i32, i32) #1

declare dso_local i32 @zynq_fpga_read(%struct.zynq_fpga_priv*, i32) #1

declare dso_local i32 @zynq_fpga_poll_timeout(%struct.zynq_fpga_priv*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
