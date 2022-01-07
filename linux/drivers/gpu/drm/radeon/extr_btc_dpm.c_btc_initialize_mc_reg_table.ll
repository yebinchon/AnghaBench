; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_initialize_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_initialize_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_mc_reg_table = type { i32 }
%struct.evergreen_power_info = type { %struct.evergreen_mc_reg_table }
%struct.evergreen_mc_reg_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MC_SEQ_RAS_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_RAS_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_CAS_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_CAS_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING2_LP = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING2 = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D0_LP = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D0 = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D1_LP = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D1 = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D0_LP = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D0 = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D1_LP = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D1 = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_EMRS_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_EMRS = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_MRS_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_MRS = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_MRS1_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_MRS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @btc_initialize_mc_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc_initialize_mc_reg_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_mc_reg_table*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca %struct.evergreen_mc_reg_table*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %9)
  store %struct.evergreen_power_info* %10, %struct.evergreen_power_info** %6, align 8
  %11 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %12 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %11, i32 0, i32 0
  store %struct.evergreen_mc_reg_table* %12, %struct.evergreen_mc_reg_table** %7, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @rv770_get_memory_module_index(%struct.radeon_device* %13)
  store i32 %14, i32* %8, align 4
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
  br label %97

22:                                               ; preds = %1
  %23 = load i32, i32* @MC_SEQ_RAS_TIMING_LP, align 4
  %24 = load i32, i32* @MC_SEQ_RAS_TIMING, align 4
  %25 = call i32 @RREG32(i32 %24)
  %26 = call i32 @WREG32(i32 %23, i32 %25)
  %27 = load i32, i32* @MC_SEQ_CAS_TIMING_LP, align 4
  %28 = load i32, i32* @MC_SEQ_CAS_TIMING, align 4
  %29 = call i32 @RREG32(i32 %28)
  %30 = call i32 @WREG32(i32 %27, i32 %29)
  %31 = load i32, i32* @MC_SEQ_MISC_TIMING_LP, align 4
  %32 = load i32, i32* @MC_SEQ_MISC_TIMING, align 4
  %33 = call i32 @RREG32(i32 %32)
  %34 = call i32 @WREG32(i32 %31, i32 %33)
  %35 = load i32, i32* @MC_SEQ_MISC_TIMING2_LP, align 4
  %36 = load i32, i32* @MC_SEQ_MISC_TIMING2, align 4
  %37 = call i32 @RREG32(i32 %36)
  %38 = call i32 @WREG32(i32 %35, i32 %37)
  %39 = load i32, i32* @MC_SEQ_RD_CTL_D0_LP, align 4
  %40 = load i32, i32* @MC_SEQ_RD_CTL_D0, align 4
  %41 = call i32 @RREG32(i32 %40)
  %42 = call i32 @WREG32(i32 %39, i32 %41)
  %43 = load i32, i32* @MC_SEQ_RD_CTL_D1_LP, align 4
  %44 = load i32, i32* @MC_SEQ_RD_CTL_D1, align 4
  %45 = call i32 @RREG32(i32 %44)
  %46 = call i32 @WREG32(i32 %43, i32 %45)
  %47 = load i32, i32* @MC_SEQ_WR_CTL_D0_LP, align 4
  %48 = load i32, i32* @MC_SEQ_WR_CTL_D0, align 4
  %49 = call i32 @RREG32(i32 %48)
  %50 = call i32 @WREG32(i32 %47, i32 %49)
  %51 = load i32, i32* @MC_SEQ_WR_CTL_D1_LP, align 4
  %52 = load i32, i32* @MC_SEQ_WR_CTL_D1, align 4
  %53 = call i32 @RREG32(i32 %52)
  %54 = call i32 @WREG32(i32 %51, i32 %53)
  %55 = load i32, i32* @MC_SEQ_PMG_CMD_EMRS_LP, align 4
  %56 = load i32, i32* @MC_PMG_CMD_EMRS, align 4
  %57 = call i32 @RREG32(i32 %56)
  %58 = call i32 @WREG32(i32 %55, i32 %57)
  %59 = load i32, i32* @MC_SEQ_PMG_CMD_MRS_LP, align 4
  %60 = load i32, i32* @MC_PMG_CMD_MRS, align 4
  %61 = call i32 @RREG32(i32 %60)
  %62 = call i32 @WREG32(i32 %59, i32 %61)
  %63 = load i32, i32* @MC_SEQ_PMG_CMD_MRS1_LP, align 4
  %64 = load i32, i32* @MC_PMG_CMD_MRS1, align 4
  %65 = call i32 @RREG32(i32 %64)
  %66 = call i32 @WREG32(i32 %63, i32 %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %5, align 8
  %70 = call i32 @radeon_atom_init_mc_reg_table(%struct.radeon_device* %67, i32 %68, %struct.atom_mc_reg_table* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %22
  br label %93

74:                                               ; preds = %22
  %75 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %5, align 8
  %76 = load %struct.evergreen_mc_reg_table*, %struct.evergreen_mc_reg_table** %7, align 8
  %77 = call i32 @btc_copy_vbios_mc_reg_table(%struct.atom_mc_reg_table* %75, %struct.evergreen_mc_reg_table* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %93

81:                                               ; preds = %74
  %82 = load %struct.evergreen_mc_reg_table*, %struct.evergreen_mc_reg_table** %7, align 8
  %83 = call i32 @btc_set_s0_mc_reg_index(%struct.evergreen_mc_reg_table* %82)
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = load %struct.evergreen_mc_reg_table*, %struct.evergreen_mc_reg_table** %7, align 8
  %86 = call i32 @btc_set_mc_special_registers(%struct.radeon_device* %84, %struct.evergreen_mc_reg_table* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %93

90:                                               ; preds = %81
  %91 = load %struct.evergreen_mc_reg_table*, %struct.evergreen_mc_reg_table** %7, align 8
  %92 = call i32 @btc_set_valid_flag(%struct.evergreen_mc_reg_table* %91)
  br label %93

93:                                               ; preds = %90, %89, %80, %73
  %94 = load %struct.atom_mc_reg_table*, %struct.atom_mc_reg_table** %5, align 8
  %95 = call i32 @kfree(%struct.atom_mc_reg_table* %94)
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_memory_module_index(%struct.radeon_device*) #1

declare dso_local %struct.atom_mc_reg_table* @kzalloc(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_atom_init_mc_reg_table(%struct.radeon_device*, i32, %struct.atom_mc_reg_table*) #1

declare dso_local i32 @btc_copy_vbios_mc_reg_table(%struct.atom_mc_reg_table*, %struct.evergreen_mc_reg_table*) #1

declare dso_local i32 @btc_set_s0_mc_reg_index(%struct.evergreen_mc_reg_table*) #1

declare dso_local i32 @btc_set_mc_special_registers(%struct.radeon_device*, %struct.evergreen_mc_reg_table*) #1

declare dso_local i32 @btc_set_valid_flag(%struct.evergreen_mc_reg_table*) #1

declare dso_local i32 @kfree(%struct.atom_mc_reg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
