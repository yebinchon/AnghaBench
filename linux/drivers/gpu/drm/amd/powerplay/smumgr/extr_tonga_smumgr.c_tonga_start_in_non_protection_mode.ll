; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_start_in_non_protection_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_start_in_non_protection_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@SMC_IND = common dso_local global i32 0, align 4
@RCU_UC_EVENTS = common dso_local global i32 0, align 4
@boot_seq_done = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@ixFIRMWARE_FLAGS = common dso_local global i32 0, align 4
@SMC_SYSCON_RESET_CNTL = common dso_local global i32 0, align 4
@rst_reg = common dso_local global i32 0, align 4
@SMC_SYSCON_CLOCK_CNTL_0 = common dso_local global i32 0, align 4
@ck_disable = common dso_local global i32 0, align 4
@FIRMWARE_FLAGS = common dso_local global i32 0, align 4
@INTERRUPTS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @tonga_start_in_non_protection_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_start_in_non_protection_mode(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %6 = load i32, i32* @SMC_IND, align 4
  %7 = load i32, i32* @RCU_UC_EVENTS, align 4
  %8 = load i32, i32* @boot_seq_done, align 4
  %9 = call i32 @PHM_WAIT_VFPF_INDIRECT_FIELD_UNEQUAL(%struct.pp_hwmgr* %5, i32 %6, i32 %7, i32 %8, i32 0)
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %14 = load i32, i32* @ixFIRMWARE_FLAGS, align 4
  %15 = call i32 @cgs_write_ind_register(i32 %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %20 = load i32, i32* @SMC_SYSCON_RESET_CNTL, align 4
  %21 = load i32, i32* @rst_reg, align 4
  %22 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %18, i32 %19, i32 %20, i32 %21, i32 1)
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %24 = call i32 @smu7_upload_smu_firmware_image(%struct.pp_hwmgr* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %1
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %31 = call i32 @smu7_program_jump_on_start(%struct.pp_hwmgr* %30)
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %36 = load i32, i32* @SMC_SYSCON_CLOCK_CNTL_0, align 4
  %37 = load i32, i32* @ck_disable, align 4
  %38 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %34, i32 %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %43 = load i32, i32* @SMC_SYSCON_RESET_CNTL, align 4
  %44 = load i32, i32* @rst_reg, align 4
  %45 = call i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32 %41, i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %47 = load i32, i32* @SMC_IND, align 4
  %48 = load i32, i32* @FIRMWARE_FLAGS, align 4
  %49 = load i32, i32* @INTERRUPTS_ENABLED, align 4
  %50 = call i32 @PHM_WAIT_VFPF_INDIRECT_FIELD(%struct.pp_hwmgr* %46, i32 %47, i32 %48, i32 %49, i32 1)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %29, %27
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @PHM_WAIT_VFPF_INDIRECT_FIELD_UNEQUAL(%struct.pp_hwmgr*, i32, i32, i32, i32) #1

declare dso_local i32 @cgs_write_ind_register(i32, i32, i32, i32) #1

declare dso_local i32 @PHM_WRITE_VFPF_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @smu7_upload_smu_firmware_image(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_program_jump_on_start(%struct.pp_hwmgr*) #1

declare dso_local i32 @PHM_WAIT_VFPF_INDIRECT_FIELD(%struct.pp_hwmgr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
