; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"smc is running, no need to load smc firmware\0A\00", align 1
@SMC_IND = common dso_local global i32 0, align 4
@RCU_UC_EVENTS = common dso_local global i32 0, align 4
@boot_seq_done = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@SMC_SYSCON_MISC_CNTL = common dso_local global i32 0, align 4
@pre_fetcher_en = common dso_local global i32 0, align 4
@SMC_SYSCON_CLOCK_CNTL_0 = common dso_local global i32 0, align 4
@ck_disable = common dso_local global i32 0, align 4
@SMC_SYSCON_RESET_CNTL = common dso_local global i32 0, align 4
@rst_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_upload_firmware(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %5 = call i64 @ci_is_smc_ram_running(%struct.pp_hwmgr* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %38

9:                                                ; preds = %1
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = load i32, i32* @SMC_IND, align 4
  %12 = load i32, i32* @RCU_UC_EVENTS, align 4
  %13 = load i32, i32* @boot_seq_done, align 4
  %14 = call i32 @PHM_WAIT_INDIRECT_FIELD(%struct.pp_hwmgr* %10, i32 %11, i32 %12, i32 %13, i32 1)
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %19 = load i32, i32* @SMC_SYSCON_MISC_CNTL, align 4
  %20 = load i32, i32* @pre_fetcher_en, align 4
  %21 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %17, i32 %18, i32 %19, i32 %20, i32 1)
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %23 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %26 = load i32, i32* @SMC_SYSCON_CLOCK_CNTL_0, align 4
  %27 = load i32, i32* @ck_disable, align 4
  %28 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %24, i32 %25, i32 %26, i32 %27, i32 1)
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %33 = load i32, i32* @SMC_SYSCON_RESET_CNTL, align 4
  %34 = load i32, i32* @rst_reg, align 4
  %35 = call i32 @PHM_WRITE_INDIRECT_FIELD(i32 %31, i32 %32, i32 %33, i32 %34, i32 1)
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %37 = call i32 @ci_load_smc_ucode(%struct.pp_hwmgr* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %9, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @ci_is_smc_ram_running(%struct.pp_hwmgr*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @PHM_WAIT_INDIRECT_FIELD(%struct.pp_hwmgr*, i32, i32, i32, i32) #1

declare dso_local i32 @PHM_WRITE_INDIRECT_FIELD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ci_load_smc_ucode(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
