; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga-a10.c_socfpga_a10_fpga_write_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga-a10.c_socfpga_a10_fpga_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, %struct.a10_fpga_priv* }
%struct.a10_fpga_priv = type { i32 }
%struct.fpga_image_info = type { i32 }

@A10_FPGAMGR_IMGCFG_CTL_01_OFST = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_02_OFST = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_USERMODE = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Timeout in final check. Status=%08xf\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*)* @socfpga_a10_fpga_write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_a10_fpga_write_complete(%struct.fpga_manager* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_manager*, align 8
  %5 = alloca %struct.fpga_image_info*, align 8
  %6 = alloca %struct.a10_fpga_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %4, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %5, align 8
  %9 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %10 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %9, i32 0, i32 1
  %11 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  store %struct.a10_fpga_priv* %11, %struct.a10_fpga_priv** %6, align 8
  %12 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %6, align 8
  %13 = call i32 @socfpga_a10_fpga_wait_for_pr_done(%struct.a10_fpga_priv* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %6, align 8
  %15 = getelementptr inbounds %struct.a10_fpga_priv, %struct.a10_fpga_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_OFST, align 4
  %18 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST, align 4
  %19 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 0)
  %20 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %6, align 8
  %21 = call i32 @socfpga_a10_fpga_generate_dclks(%struct.a10_fpga_priv* %20, i32 256)
  %22 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %6, align 8
  %23 = getelementptr inbounds %struct.a10_fpga_priv, %struct.a10_fpga_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_02_OFST, align 4
  %26 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL, align 4
  %27 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 0)
  %28 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %6, align 8
  %29 = getelementptr inbounds %struct.a10_fpga_priv, %struct.a10_fpga_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_OFST, align 4
  %32 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE, align 4
  %33 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE, align 4
  %34 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %6, align 8
  %36 = getelementptr inbounds %struct.a10_fpga_priv, %struct.a10_fpga_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_OFST, align 4
  %39 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG, align 4
  %40 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %71

46:                                               ; preds = %2
  %47 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %6, align 8
  %48 = call i32 @socfpga_a10_fpga_read_stat(%struct.a10_fpga_priv* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_USERMODE, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58, %53, %46
  %64 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %65 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %64, i32 0, i32 0
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %63, %44
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @socfpga_a10_fpga_wait_for_pr_done(%struct.a10_fpga_priv*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @socfpga_a10_fpga_generate_dclks(%struct.a10_fpga_priv*, i32) #1

declare dso_local i32 @socfpga_a10_fpga_read_stat(%struct.a10_fpga_priv*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
