; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_upload_smu_firmware_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_upload_smu_firmware_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i32, i64 }
%struct.smu7_smumgr = type { i32 }
%struct.cgs_firmware_info = type { i64, i32, i32, i32, i32 }

@UCODE_ID_SMU = common dso_local global i32 0, align 4
@UCODE_ID_SMU_SK = common dso_local global i32 0, align 4
@SMU7_SMC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_upload_smu_firmware_image(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu7_smumgr*, align 8
  %5 = alloca %struct.cgs_firmware_info, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.smu7_smumgr*
  store %struct.smu7_smumgr* %9, %struct.smu7_smumgr** %4, align 8
  %10 = bitcast %struct.cgs_firmware_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %12 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @UCODE_ID_SMU, align 4
  %20 = call i32 @smu7_convert_fw_type_to_cgs(i32 %19)
  %21 = call i32 @cgs_get_firmware_info(i32 %18, i32 %20, %struct.cgs_firmware_info* %5)
  br label %29

22:                                               ; preds = %1
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @UCODE_ID_SMU_SK, align 4
  %27 = call i32 @smu7_convert_fw_type_to_cgs(i32 %26)
  %28 = call i32 @cgs_get_firmware_info(i32 %25, i32 %27, %struct.cgs_firmware_info* %5)
  br label %29

29:                                               ; preds = %22, %15
  %30 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %39 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* @SMU7_SMC_SIZE, align 4
  %45 = call i32 @smu7_upload_smc_firmware_data(%struct.pp_hwmgr* %38, i32 %40, i32* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cgs_get_firmware_info(i32, i32, %struct.cgs_firmware_info*) #2

declare dso_local i32 @smu7_convert_fw_type_to_cgs(i32) #2

declare dso_local i32 @smu7_upload_smc_firmware_data(%struct.pp_hwmgr*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
