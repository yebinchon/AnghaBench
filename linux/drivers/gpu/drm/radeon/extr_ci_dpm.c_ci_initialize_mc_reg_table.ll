; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_initialize_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_initialize_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { %struct.ci_mc_reg_table }
%struct.ci_mc_reg_table = type { i32 }
%struct.atom_mc_reg_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MC_SEQ_RAS_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_RAS_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_CAS_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_CAS_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_DLL_STBY_LP = common dso_local global i32 0, align 4
@MC_SEQ_DLL_STBY = common dso_local global i32 0, align 4
@MC_SEQ_G5PDX_CMD0_LP = common dso_local global i32 0, align 4
@MC_SEQ_G5PDX_CMD0 = common dso_local global i32 0, align 4
@MC_SEQ_G5PDX_CMD1_LP = common dso_local global i32 0, align 4
@MC_SEQ_G5PDX_CMD1 = common dso_local global i32 0, align 4
@MC_SEQ_G5PDX_CTRL_LP = common dso_local global i32 0, align 4
@MC_SEQ_G5PDX_CTRL = common dso_local global i32 0, align 4
@MC_SEQ_PMG_DVS_CMD_LP = common dso_local global i32 0, align 4
@MC_SEQ_PMG_DVS_CMD = common dso_local global i32 0, align 4
@MC_SEQ_PMG_DVS_CTL_LP = common dso_local global i32 0, align 4
@MC_SEQ_PMG_DVS_CTL = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING2_LP = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING2 = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_EMRS_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_EMRS = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_MRS_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_MRS = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_MRS1_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_MRS1 = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D0_LP = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D0 = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D1_LP = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D1 = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D0_LP = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D0 = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D1_LP = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D1 = common dso_local global i32 0, align 4
@MC_SEQ_PMG_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_PMG_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_MRS2_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_MRS2 = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_2_LP = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_initialize_mc_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_initialize_mc_reg_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca %struct.atom_mc_reg_table*, align 8
  %6 = alloca %struct.ci_mc_reg_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %9)
  store %struct.ci_power_info* %10, %struct.ci_power_info** %4, align 8
  %11 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %12 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %11, i32 0, i32 0
  store %struct.ci_mc_reg_table* %12, %struct.ci_mc_reg_table** %6, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @rv770_get_memory_module_index(%struct.radeon_device* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.atom_mc_reg_table* @kzalloc(i32 4, i32 %15)
  store %struct.atom_mc_reg_table* %16, %struct.atom_mc_reg_table** %5, align 8
  %17 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %5, align 8
  %18 = icmp ne %struct.atom_mc_reg_table* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %140

22:                                               ; preds = %1
  %23 = load i32, i32* @MC_SEQ_RAS_TIMING_LP, align 4
  %24 = load i32, i32* @MC_SEQ_RAS_TIMING, align 4
  %25 = call i32 @RREG32(i32 %24)
  %26 = call i32 @WREG32(i32 %23, i32 %25)
  %27 = load i32, i32* @MC_SEQ_CAS_TIMING_LP, align 4
  %28 = load i32, i32* @MC_SEQ_CAS_TIMING, align 4
  %29 = call i32 @RREG32(i32 %28)
  %30 = call i32 @WREG32(i32 %27, i32 %29)
  %31 = load i32, i32* @MC_SEQ_DLL_STBY_LP, align 4
  %32 = load i32, i32* @MC_SEQ_DLL_STBY, align 4
  %33 = call i32 @RREG32(i32 %32)
  %34 = call i32 @WREG32(i32 %31, i32 %33)
  %35 = load i32, i32* @MC_SEQ_G5PDX_CMD0_LP, align 4
  %36 = load i32, i32* @MC_SEQ_G5PDX_CMD0, align 4
  %37 = call i32 @RREG32(i32 %36)
  %38 = call i32 @WREG32(i32 %35, i32 %37)
  %39 = load i32, i32* @MC_SEQ_G5PDX_CMD1_LP, align 4
  %40 = load i32, i32* @MC_SEQ_G5PDX_CMD1, align 4
  %41 = call i32 @RREG32(i32 %40)
  %42 = call i32 @WREG32(i32 %39, i32 %41)
  %43 = load i32, i32* @MC_SEQ_G5PDX_CTRL_LP, align 4
  %44 = load i32, i32* @MC_SEQ_G5PDX_CTRL, align 4
  %45 = call i32 @RREG32(i32 %44)
  %46 = call i32 @WREG32(i32 %43, i32 %45)
  %47 = load i32, i32* @MC_SEQ_PMG_DVS_CMD_LP, align 4
  %48 = load i32, i32* @MC_SEQ_PMG_DVS_CMD, align 4
  %49 = call i32 @RREG32(i32 %48)
  %50 = call i32 @WREG32(i32 %47, i32 %49)
  %51 = load i32, i32* @MC_SEQ_PMG_DVS_CTL_LP, align 4
  %52 = load i32, i32* @MC_SEQ_PMG_DVS_CTL, align 4
  %53 = call i32 @RREG32(i32 %52)
  %54 = call i32 @WREG32(i32 %51, i32 %53)
  %55 = load i32, i32* @MC_SEQ_MISC_TIMING_LP, align 4
  %56 = load i32, i32* @MC_SEQ_MISC_TIMING, align 4
  %57 = call i32 @RREG32(i32 %56)
  %58 = call i32 @WREG32(i32 %55, i32 %57)
  %59 = load i32, i32* @MC_SEQ_MISC_TIMING2_LP, align 4
  %60 = load i32, i32* @MC_SEQ_MISC_TIMING2, align 4
  %61 = call i32 @RREG32(i32 %60)
  %62 = call i32 @WREG32(i32 %59, i32 %61)
  %63 = load i32, i32* @MC_SEQ_PMG_CMD_EMRS_LP, align 4
  %64 = load i32, i32* @MC_PMG_CMD_EMRS, align 4
  %65 = call i32 @RREG32(i32 %64)
  %66 = call i32 @WREG32(i32 %63, i32 %65)
  %67 = load i32, i32* @MC_SEQ_PMG_CMD_MRS_LP, align 4
  %68 = load i32, i32* @MC_PMG_CMD_MRS, align 4
  %69 = call i32 @RREG32(i32 %68)
  %70 = call i32 @WREG32(i32 %67, i32 %69)
  %71 = load i32, i32* @MC_SEQ_PMG_CMD_MRS1_LP, align 4
  %72 = load i32, i32* @MC_PMG_CMD_MRS1, align 4
  %73 = call i32 @RREG32(i32 %72)
  %74 = call i32 @WREG32(i32 %71, i32 %73)
  %75 = load i32, i32* @MC_SEQ_WR_CTL_D0_LP, align 4
  %76 = load i32, i32* @MC_SEQ_WR_CTL_D0, align 4
  %77 = call i32 @RREG32(i32 %76)
  %78 = call i32 @WREG32(i32 %75, i32 %77)
  %79 = load i32, i32* @MC_SEQ_WR_CTL_D1_LP, align 4
  %80 = load i32, i32* @MC_SEQ_WR_CTL_D1, align 4
  %81 = call i32 @RREG32(i32 %80)
  %82 = call i32 @WREG32(i32 %79, i32 %81)
  %83 = load i32, i32* @MC_SEQ_RD_CTL_D0_LP, align 4
  %84 = load i32, i32* @MC_SEQ_RD_CTL_D0, align 4
  %85 = call i32 @RREG32(i32 %84)
  %86 = call i32 @WREG32(i32 %83, i32 %85)
  %87 = load i32, i32* @MC_SEQ_RD_CTL_D1_LP, align 4
  %88 = load i32, i32* @MC_SEQ_RD_CTL_D1, align 4
  %89 = call i32 @RREG32(i32 %88)
  %90 = call i32 @WREG32(i32 %87, i32 %89)
  %91 = load i32, i32* @MC_SEQ_PMG_TIMING_LP, align 4
  %92 = load i32, i32* @MC_SEQ_PMG_TIMING, align 4
  %93 = call i32 @RREG32(i32 %92)
  %94 = call i32 @WREG32(i32 %91, i32 %93)
  %95 = load i32, i32* @MC_SEQ_PMG_CMD_MRS2_LP, align 4
  %96 = load i32, i32* @MC_PMG_CMD_MRS2, align 4
  %97 = call i32 @RREG32(i32 %96)
  %98 = call i32 @WREG32(i32 %95, i32 %97)
  %99 = load i32, i32* @MC_SEQ_WR_CTL_2_LP, align 4
  %100 = load i32, i32* @MC_SEQ_WR_CTL_2, align 4
  %101 = call i32 @RREG32(i32 %100)
  %102 = call i32 @WREG32(i32 %99, i32 %101)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %5, align 8
  %106 = call i32 @radeon_atom_init_mc_reg_table(%struct.radeon_device* %103, i32 %104, %struct.atom_mc_reg_table* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %22
  br label %136

110:                                              ; preds = %22
  %111 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %5, align 8
  %112 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %6, align 8
  %113 = call i32 @ci_copy_vbios_mc_reg_table(%struct.atom_mc_reg_table* %111, %struct.ci_mc_reg_table* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %136

117:                                              ; preds = %110
  %118 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %6, align 8
  %119 = call i32 @ci_set_s0_mc_reg_index(%struct.ci_mc_reg_table* %118)
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %6, align 8
  %122 = call i32 @ci_register_patching_mc_seq(%struct.radeon_device* %120, %struct.ci_mc_reg_table* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %136

126:                                              ; preds = %117
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %6, align 8
  %129 = call i32 @ci_set_mc_special_registers(%struct.radeon_device* %127, %struct.ci_mc_reg_table* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %136

133:                                              ; preds = %126
  %134 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %6, align 8
  %135 = call i32 @ci_set_valid_flag(%struct.ci_mc_reg_table* %134)
  br label %136

136:                                              ; preds = %133, %132, %125, %116, %109
  %137 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %5, align 8
  %138 = call i32 @kfree(%struct.atom_mc_reg_table* %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %19
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_memory_module_index(%struct.radeon_device*) #1

declare dso_local %struct.atom_mc_reg_table* @kzalloc(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_atom_init_mc_reg_table(%struct.radeon_device*, i32, %struct.atom_mc_reg_table*) #1

declare dso_local i32 @ci_copy_vbios_mc_reg_table(%struct.atom_mc_reg_table*, %struct.ci_mc_reg_table*) #1

declare dso_local i32 @ci_set_s0_mc_reg_index(%struct.ci_mc_reg_table*) #1

declare dso_local i32 @ci_register_patching_mc_seq(%struct.radeon_device*, %struct.ci_mc_reg_table*) #1

declare dso_local i32 @ci_set_mc_special_registers(%struct.radeon_device*, %struct.ci_mc_reg_table*) #1

declare dso_local i32 @ci_set_valid_flag(%struct.ci_mc_reg_table*) #1

declare dso_local i32 @kfree(%struct.atom_mc_reg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
