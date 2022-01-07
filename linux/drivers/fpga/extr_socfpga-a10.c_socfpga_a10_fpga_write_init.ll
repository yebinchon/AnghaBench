; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga-a10.c_socfpga_a10_fpga_write_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga-a10.c_socfpga_a10_fpga_write_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { i32, %struct.a10_fpga_priv* }
%struct.a10_fpga_priv = type { i32 }
%struct.fpga_image_info = type { i32 }

@FPGA_MGR_PARTIAL_RECONFIG = common dso_local global i32 0, align 4
@CFGWDTH_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_MASK = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Fail: invalid msel=%d\0A\00", align 1
@A10_FPGAMGR_IMGCFG_STAT_F2S_NCONFIG_PIN = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_01_OFST = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_02_OFST = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_00_OFST = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NCONFIG = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NSTATUS = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_CONDONE = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)* @socfpga_a10_fpga_write_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_a10_fpga_write_init(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.fpga_image_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.a10_fpga_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %6, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %17 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %16, i32 0, i32 1
  %18 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %17, align 8
  store %struct.a10_fpga_priv* %18, %struct.a10_fpga_priv** %10, align 8
  %19 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %20 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FPGA_MGR_PARTIAL_RECONFIG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @CFGWDTH_16, align 4
  store i32 %26, i32* %11, align 4
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %123

30:                                               ; preds = %25
  %31 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %32 = call i32 @socfpga_a10_fpga_read_stat(%struct.a10_fpga_priv* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_MASK, align 4
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_SHIFT, align 4
  %37 = load i32, i32* %12, align 4
  %38 = ashr i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %46 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %45, i32 0, i32 0
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %123

51:                                               ; preds = %41, %30
  %52 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %53 = call i32 @socfpga_a10_fpga_read_stat(%struct.a10_fpga_priv* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_NCONFIG_PIN, align 4
  %55 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %123

65:                                               ; preds = %51
  %66 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @socfpga_a10_fpga_set_cfg_width(%struct.a10_fpga_priv* %66, i32 %67)
  %69 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @socfpga_a10_fpga_set_cdratio(%struct.fpga_manager* %69, i32 %70, i8* %71, i64 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %5, align 4
  br label %123

78:                                               ; preds = %65
  %79 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %80 = getelementptr inbounds %struct.a10_fpga_priv, %struct.a10_fpga_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_OFST, align 4
  %83 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG, align 4
  %84 = call i32 @regmap_write(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %86 = getelementptr inbounds %struct.a10_fpga_priv, %struct.a10_fpga_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_02_OFST, align 4
  %89 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL, align 4
  %90 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL, align 4
  %91 = call i32 @regmap_update_bits(i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %93 = getelementptr inbounds %struct.a10_fpga_priv, %struct.a10_fpga_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_00_OFST, align 4
  %96 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NCONFIG, align 4
  %97 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NSTATUS, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_CONDONE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @regmap_write(i32 %94, i32 %95, i32 %102)
  %104 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %105 = getelementptr inbounds %struct.a10_fpga_priv, %struct.a10_fpga_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_OFST, align 4
  %108 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG, align 4
  %109 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 0)
  %110 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %111 = call i32 @socfpga_a10_fpga_generate_dclks(%struct.a10_fpga_priv* %110, i32 256)
  %112 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %113 = getelementptr inbounds %struct.a10_fpga_priv, %struct.a10_fpga_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_OFST, align 4
  %116 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST, align 4
  %117 = load i32, i32* @A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST, align 4
  %118 = call i32 @regmap_update_bits(i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %120 = call i32 @socfpga_a10_fpga_generate_dclks(%struct.a10_fpga_priv* %119, i32 2047)
  %121 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %10, align 8
  %122 = call i32 @socfpga_a10_fpga_wait_for_pr_ready(%struct.a10_fpga_priv* %121)
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %78, %76, %62, %44, %27
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @socfpga_a10_fpga_read_stat(%struct.a10_fpga_priv*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @socfpga_a10_fpga_set_cfg_width(%struct.a10_fpga_priv*, i32) #1

declare dso_local i32 @socfpga_a10_fpga_set_cdratio(%struct.fpga_manager*, i32, i8*, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @socfpga_a10_fpga_generate_dclks(%struct.a10_fpga_priv*, i32) #1

declare dso_local i32 @socfpga_a10_fpga_wait_for_pr_ready(%struct.a10_fpga_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
