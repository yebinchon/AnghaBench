; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_smu_upload_firmware_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_smu_upload_firmware_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32*, i32 }
%struct.cgs_firmware_info = type { i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UCODE_ID_SMU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[ powerplay ] SMC ucode is not 4 bytes aligned\0A\00", align 1
@ICELAND_SMC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"[ powerplay ] SMC address is beyond the SMC RAM area\0A\00", align 1
@SMC_IND = common dso_local global i32 0, align 4
@RCU_UC_EVENTS = common dso_local global i32 0, align 4
@boot_seq_done = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@ixSMC_SYSCON_MISC_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @iceland_smu_upload_firmware_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_smu_upload_firmware_image(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgs_firmware_info, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %6 = bitcast %struct.cgs_firmware_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = icmp eq %struct.pp_hwmgr* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %79

17:                                               ; preds = %9
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @UCODE_ID_SMU, align 4
  %22 = call i32 @smu7_convert_fw_type_to_cgs(i32 %21)
  %23 = call i32 @cgs_get_firmware_info(i32* %20, i32 %22, %struct.cgs_firmware_info* %5)
  %24 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %79

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ICELAND_SMC_SIZE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %47 = load i32, i32* @SMC_IND, align 4
  %48 = load i32, i32* @RCU_UC_EVENTS, align 4
  %49 = load i32, i32* @boot_seq_done, align 4
  %50 = call i32 @PHM_WAIT_INDIRECT_FIELD_UNEQUAL(%struct.pp_hwmgr* %46, i32 %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %55 = load i32, i32* @ixSMC_SYSCON_MISC_CNTL, align 4
  %56 = call i32 @cgs_read_ind_register(i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %58 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %61 = load i32, i32* @ixSMC_SYSCON_MISC_CNTL, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, 1
  %64 = call i32 @cgs_write_ind_register(i32* %59, i32 %60, i32 %61, i32 %63)
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %66 = call i32 @iceland_stop_smc_clock(%struct.pp_hwmgr* %65)
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %68 = call i32 @iceland_reset_smc(%struct.pp_hwmgr* %67)
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %70 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* @ICELAND_SMC_SIZE, align 4
  %76 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @iceland_upload_smc_firmware_data(%struct.pp_hwmgr* %69, i32 %71, i32* %74, i32 %75, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %41, %37, %28, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cgs_get_firmware_info(i32*, i32, %struct.cgs_firmware_info*) #2

declare dso_local i32 @smu7_convert_fw_type_to_cgs(i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @PHM_WAIT_INDIRECT_FIELD_UNEQUAL(%struct.pp_hwmgr*, i32, i32, i32, i32) #2

declare dso_local i32 @cgs_read_ind_register(i32*, i32, i32) #2

declare dso_local i32 @cgs_write_ind_register(i32*, i32, i32, i32) #2

declare dso_local i32 @iceland_stop_smc_clock(%struct.pp_hwmgr*) #2

declare dso_local i32 @iceland_reset_smc(%struct.pp_hwmgr*) #2

declare dso_local i32 @iceland_upload_smc_firmware_data(%struct.pp_hwmgr*, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
