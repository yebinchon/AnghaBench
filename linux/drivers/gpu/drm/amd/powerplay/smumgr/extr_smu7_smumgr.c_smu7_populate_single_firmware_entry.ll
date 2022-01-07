; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_populate_single_firmware_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_populate_single_firmware_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32 }
%struct.SMU_Entry = type { i32, i32, i64, i64, i64, i32, i32, i64, i32 }
%struct.cgs_firmware_info = type { i32, i32, i32, i32 }

@UCODE_ID_RLC_G = common dso_local global i64 0, align 8
@UCODE_ID_CP_MEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, %struct.SMU_Entry*)* @smu7_populate_single_firmware_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_populate_single_firmware_entry(%struct.pp_hwmgr* %0, i64 %1, %struct.SMU_Entry* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.SMU_Entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgs_firmware_info, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.SMU_Entry* %2, %struct.SMU_Entry** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = bitcast %struct.cgs_firmware_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @smu7_convert_fw_type_to_cgs(i64 %13)
  %15 = call i32 @cgs_get_firmware_info(i32 %12, i32 %14, %struct.cgs_firmware_info* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %22 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %25 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %24, i32 0, i32 7
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @upper_32_bits(i32 %27)
  %29 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %30 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %35 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %37 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %39 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %41 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %18
  %45 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 20
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %44, %18
  %49 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %52 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %54 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %3
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @UCODE_ID_RLC_G, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @UCODE_ID_CP_MEC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %65 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %69

66:                                               ; preds = %59
  %67 = load %struct.SMU_Entry*, %struct.SMU_Entry** %6, align 8
  %68 = getelementptr inbounds %struct.SMU_Entry, %struct.SMU_Entry* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cgs_get_firmware_info(i32, i32, %struct.cgs_firmware_info*) #2

declare dso_local i32 @smu7_convert_fw_type_to_cgs(i64) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @lower_32_bits(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
