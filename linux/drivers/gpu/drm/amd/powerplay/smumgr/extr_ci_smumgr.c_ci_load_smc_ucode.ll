; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_load_smc_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_load_smc_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i32 }
%struct.cgs_firmware_info = type { i32, i32, i64, i32, i32, i32 }

@CGS_UCODE_ID_SMU = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SMC address is beyond the SMC RAM area.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmSMC_IND_INDEX_0 = common dso_local global i32 0, align 4
@SMC_IND_ACCESS_CNTL = common dso_local global i32 0, align 4
@AUTO_INCREMENT_IND_0 = common dso_local global i32 0, align 4
@mmSMC_IND_DATA_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SMC size must be divisible by 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_load_smc_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_load_smc_ucode(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgs_firmware_info, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %9 = bitcast %struct.cgs_firmware_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CGS_UCODE_ID_SMU, align 4
  %14 = call i32 @cgs_get_firmware_info(i32 %12, i32 %13, %struct.cgs_firmware_info* %8)
  %15 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  %25 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %6, align 8
  %28 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SMC_RAM_END, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %97

37:                                               ; preds = %1
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @mmSMC_IND_INDEX_0, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cgs_write_register(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SMC_IND_ACCESS_CNTL, align 4
  %48 = load i32, i32* @AUTO_INCREMENT_IND_0, align 4
  %49 = call i32 @PHM_WRITE_FIELD(i32 %46, i32 %47, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %80, %37
  %51 = load i32, i32* %4, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %83

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 24
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %57, %61
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %62, %66
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %67, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %73 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @cgs_write_register(i32 %74, i32 %75, i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32* %79, i32** %6, align 8
  br label %80

80:                                               ; preds = %53
  %81 = load i32, i32* %4, align 4
  %82 = sub nsw i32 %81, 4
  store i32 %82, i32* %4, align 4
  br label %50

83:                                               ; preds = %50
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %85 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SMC_IND_ACCESS_CNTL, align 4
  %88 = load i32, i32* @AUTO_INCREMENT_IND_0, align 4
  %89 = call i32 @PHM_WRITE_FIELD(i32 %86, i32 %87, i32 %88, i32 0)
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 0, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %92, %33
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cgs_get_firmware_info(i32, i32, %struct.cgs_firmware_info*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @cgs_write_register(i32, i32, i32) #2

declare dso_local i32 @PHM_WRITE_FIELD(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
