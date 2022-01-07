; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_load_mec_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_load_mec_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32*, %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i32 }
%struct.cgs_firmware_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CGS_UCODE_ID_CP_MEC = common dso_local global i32 0, align 4
@mmCP_MEC_CNTL = common dso_local global i32 0, align 4
@CP_MEC_CNTL = common dso_local global i32 0, align 4
@MEC_ME1_HALT = common dso_local global i32 0, align 4
@MEC_ME2_HALT = common dso_local global i32 0, align 4
@mmCP_CPC_IC_BASE_CNTL = common dso_local global i32 0, align 4
@CP_CPC_IC_BASE_CNTL = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@ATC = common dso_local global i32 0, align 4
@CACHE_POLICY = common dso_local global i32 0, align 4
@MTYPE = common dso_local global i32 0, align 4
@CP_CPC_IC_BASE_LO = common dso_local global i32 0, align 4
@IC_BASE_LO = common dso_local global i32 0, align 4
@mmCP_CPC_IC_BASE_LO = common dso_local global i32 0, align 4
@CP_CPC_IC_BASE_HI = common dso_local global i32 0, align 4
@IC_BASE_HI = common dso_local global i32 0, align 4
@mmCP_CPC_IC_BASE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_load_mec_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_load_mec_firmware(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgs_firmware_info, align 4
  %8 = alloca %struct.smu8_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = bitcast %struct.cgs_firmware_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = icmp eq %struct.pp_hwmgr* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %107

20:                                               ; preds = %12
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 1
  %23 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %22, align 8
  store %struct.smu8_smumgr* %23, %struct.smu8_smumgr** %8, align 8
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @CGS_UCODE_ID_CP_MEC, align 4
  %28 = call i32 @cgs_get_firmware_info(i32* %26, i32 %27, %struct.cgs_firmware_info* %7)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %107

34:                                               ; preds = %20
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @mmCP_MEC_CNTL, align 4
  %39 = call i32 @cgs_read_register(i32* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CP_MEC_CNTL, align 4
  %42 = load i32, i32* @MEC_ME1_HALT, align 4
  %43 = call i32 @PHM_SET_FIELD(i32 %40, i32 %41, i32 %42, i32 1)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @CP_MEC_CNTL, align 4
  %46 = load i32, i32* @MEC_ME2_HALT, align 4
  %47 = call i32 @PHM_SET_FIELD(i32 %44, i32 %45, i32 %46, i32 1)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @mmCP_MEC_CNTL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @cgs_write_register(i32* %50, i32 %51, i32 %52)
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @mmCP_CPC_IC_BASE_CNTL, align 4
  %58 = call i32 @cgs_read_register(i32* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @CP_CPC_IC_BASE_CNTL, align 4
  %61 = load i32, i32* @VMID, align 4
  %62 = call i32 @PHM_SET_FIELD(i32 %59, i32 %60, i32 %61, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @CP_CPC_IC_BASE_CNTL, align 4
  %65 = load i32, i32* @ATC, align 4
  %66 = call i32 @PHM_SET_FIELD(i32 %63, i32 %64, i32 %65, i32 0)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @CP_CPC_IC_BASE_CNTL, align 4
  %69 = load i32, i32* @CACHE_POLICY, align 4
  %70 = call i32 @PHM_SET_FIELD(i32 %67, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @CP_CPC_IC_BASE_CNTL, align 4
  %73 = load i32, i32* @MTYPE, align 4
  %74 = call i32 @PHM_SET_FIELD(i32 %71, i32 %72, i32 %73, i32 1)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %76 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @mmCP_CPC_IC_BASE_CNTL, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @cgs_write_register(i32* %77, i32 %78, i32 %79)
  %81 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @lower_32_bits(i32 %82)
  %84 = load i32, i32* @CP_CPC_IC_BASE_LO, align 4
  %85 = load i32, i32* @IC_BASE_LO, align 4
  %86 = call i32 @PHM_FIELD_MASK(i32 %84, i32 %85)
  %87 = and i32 %83, %86
  store i32 %87, i32* %4, align 4
  %88 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %89 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @mmCP_CPC_IC_BASE_LO, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @cgs_write_register(i32* %90, i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %7, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @upper_32_bits(i32 %95)
  %97 = load i32, i32* @CP_CPC_IC_BASE_HI, align 4
  %98 = load i32, i32* @IC_BASE_HI, align 4
  %99 = call i32 @PHM_FIELD_MASK(i32 %97, i32 %98)
  %100 = and i32 %96, %99
  store i32 %100, i32* %4, align 4
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %102 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @mmCP_CPC_IC_BASE_HI, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @cgs_write_register(i32* %103, i32 %104, i32 %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %34, %31, %17
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cgs_get_firmware_info(i32*, i32, %struct.cgs_firmware_info*) #2

declare dso_local i32 @cgs_read_register(i32*, i32) #2

declare dso_local i32 @PHM_SET_FIELD(i32, i32, i32, i32) #2

declare dso_local i32 @cgs_write_register(i32*, i32, i32) #2

declare dso_local i32 @lower_32_bits(i32) #2

declare dso_local i32 @PHM_FIELD_MASK(i32, i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
