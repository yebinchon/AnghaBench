; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_start_in_protection_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_start_in_protection_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@SMC_SYSCON_RESET_CNTL = common dso_local global i32 0, align 4
@rst_reg = common dso_local global i32 0, align 4
@ixSMU_STATUS = common dso_local global i32 0, align 4
@SMC_SYSCON_CLOCK_CNTL_0 = common dso_local global i32 0, align 4
@ck_disable = common dso_local global i32 0, align 4
@SMU_INPUT_DATA = common dso_local global i32 0, align 4
@AUTO_START = common dso_local global i32 0, align 4
@ixFIRMWARE_FLAGS = common dso_local global i32 0, align 4
@SMC_IND = common dso_local global i32 0, align 4
@RCU_UC_EVENTS = common dso_local global i32 0, align 4
@INTERRUPTS_ENABLED = common dso_local global i32 0, align 4
@SMU_STATUS = common dso_local global i32 0, align 4
@SMU_DONE = common dso_local global i32 0, align 4
@SMU_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SMU Firmware start failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FIRMWARE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @tonga_start_in_protection_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_start_in_protection_mode(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %9 = load i32, i32* @SMC_SYSCON_RESET_CNTL, align 4
  %10 = load i32, i32* @rst_reg, align 4
  %11 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %7, i32 %8, i32 %9, i32 %10, i32 1)
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %13 = call i32 @smu7_upload_smu_firmware_image(%struct.pp_hwmgr* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %82

18:                                               ; preds = %1
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %23 = load i32, i32* @ixSMU_STATUS, align 4
  %24 = call i32 @cgs_write_ind_register(i32 %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %29 = load i32, i32* @SMC_SYSCON_CLOCK_CNTL_0, align 4
  %30 = load i32, i32* @ck_disable, align 4
  %31 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %27, i32 %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %36 = load i32, i32* @SMC_SYSCON_RESET_CNTL, align 4
  %37 = load i32, i32* @rst_reg, align 4
  %38 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %34, i32 %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %43 = load i32, i32* @SMU_INPUT_DATA, align 4
  %44 = load i32, i32* @AUTO_START, align 4
  %45 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %41, i32 %42, i32 %43, i32 %44, i32 1)
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %50 = load i32, i32* @ixFIRMWARE_FLAGS, align 4
  %51 = call i32 @cgs_write_ind_register(i32 %48, i32 %49, i32 %50, i32 0)
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = load i32, i32* @SMC_IND, align 4
  %54 = load i32, i32* @RCU_UC_EVENTS, align 4
  %55 = load i32, i32* @INTERRUPTS_ENABLED, align 4
  %56 = call i32 @PHM_WAIT_VFPF_INDIRECT_FIELD(%struct.pp_hwmgr* %52, i32 %53, i32 %54, i32 %55, i32 1)
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %58 = call i32 @smu7_send_msg_to_smc_offset(%struct.pp_hwmgr* %57)
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %60 = load i32, i32* @SMC_IND, align 4
  %61 = load i32, i32* @SMU_STATUS, align 4
  %62 = load i32, i32* @SMU_DONE, align 4
  %63 = call i32 @PHM_WAIT_VFPF_INDIRECT_FIELD_UNEQUAL(%struct.pp_hwmgr* %59, i32 %60, i32 %61, i32 %62, i32 0)
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %65 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %68 = load i32, i32* @SMU_STATUS, align 4
  %69 = load i32, i32* @SMU_PASS, align 4
  %70 = call i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = icmp ne i32 1, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %18
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %82

76:                                               ; preds = %18
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = load i32, i32* @SMC_IND, align 4
  %79 = load i32, i32* @FIRMWARE_FLAGS, align 4
  %80 = load i32, i32* @INTERRUPTS_ENABLED, align 4
  %81 = call i32 @PHM_WAIT_VFPF_INDIRECT_FIELD(%struct.pp_hwmgr* %77, i32 %78, i32 %79, i32 %80, i32 1)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %76, %72, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @smu7_upload_smu_firmware_image(%struct.pp_hwmgr*) #1

declare dso_local i32 @cgs_write_ind_register(i32, i32, i32, i32) #1

declare dso_local i32 @PHM_WAIT_VFPF_INDIRECT_FIELD(%struct.pp_hwmgr*, i32, i32, i32, i32) #1

declare dso_local i32 @smu7_send_msg_to_smc_offset(%struct.pp_hwmgr*) #1

declare dso_local i32 @PHM_WAIT_VFPF_INDIRECT_FIELD_UNEQUAL(%struct.pp_hwmgr*, i32, i32, i32, i32) #1

declare dso_local i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
