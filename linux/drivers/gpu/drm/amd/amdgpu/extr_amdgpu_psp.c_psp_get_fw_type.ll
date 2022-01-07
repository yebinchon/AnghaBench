; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_get_fw_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_get_fw_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_firmware_info = type { i32 }

@GFX_FW_TYPE_SDMA0 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_SDMA1 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_SDMA2 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_SDMA3 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_SDMA4 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_SDMA5 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_SDMA6 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_SDMA7 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_CP_CE = common dso_local global i32 0, align 4
@GFX_FW_TYPE_CP_PFP = common dso_local global i32 0, align 4
@GFX_FW_TYPE_CP_ME = common dso_local global i32 0, align 4
@GFX_FW_TYPE_CP_MEC = common dso_local global i32 0, align 4
@GFX_FW_TYPE_CP_MEC_ME1 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_CP_MEC_ME2 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_RLC_G = common dso_local global i32 0, align 4
@GFX_FW_TYPE_RLC_RESTORE_LIST_SRM_CNTL = common dso_local global i32 0, align 4
@GFX_FW_TYPE_RLC_RESTORE_LIST_GPM_MEM = common dso_local global i32 0, align 4
@GFX_FW_TYPE_RLC_RESTORE_LIST_SRM_MEM = common dso_local global i32 0, align 4
@GFX_FW_TYPE_SMU = common dso_local global i32 0, align 4
@GFX_FW_TYPE_UVD = common dso_local global i32 0, align 4
@GFX_FW_TYPE_UVD1 = common dso_local global i32 0, align 4
@GFX_FW_TYPE_VCE = common dso_local global i32 0, align 4
@GFX_FW_TYPE_VCN = common dso_local global i32 0, align 4
@GFX_FW_TYPE_DMCU_ERAM = common dso_local global i32 0, align 4
@GFX_FW_TYPE_DMCU_ISR = common dso_local global i32 0, align 4
@GFX_FW_TYPE_VCN0_RAM = common dso_local global i32 0, align 4
@GFX_FW_TYPE_VCN1_RAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_firmware_info*, i32*)* @psp_get_fw_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_get_fw_type(%struct.amdgpu_firmware_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_firmware_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.amdgpu_firmware_info* %0, %struct.amdgpu_firmware_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %4, align 8
  %7 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %94 [
    i32 142, label %9
    i32 141, label %12
    i32 140, label %15
    i32 139, label %18
    i32 138, label %21
    i32 137, label %24
    i32 136, label %27
    i32 135, label %30
    i32 156, label %33
    i32 150, label %36
    i32 155, label %39
    i32 154, label %42
    i32 153, label %45
    i32 152, label %48
    i32 151, label %51
    i32 146, label %54
    i32 145, label %57
    i32 144, label %60
    i32 143, label %63
    i32 134, label %66
    i32 133, label %69
    i32 132, label %72
    i32 131, label %75
    i32 130, label %78
    i32 149, label %81
    i32 148, label %84
    i32 129, label %87
    i32 128, label %90
    i32 147, label %93
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @GFX_FW_TYPE_SDMA0, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  br label %97

12:                                               ; preds = %2
  %13 = load i32, i32* @GFX_FW_TYPE_SDMA1, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  br label %97

15:                                               ; preds = %2
  %16 = load i32, i32* @GFX_FW_TYPE_SDMA2, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  br label %97

18:                                               ; preds = %2
  %19 = load i32, i32* @GFX_FW_TYPE_SDMA3, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %97

21:                                               ; preds = %2
  %22 = load i32, i32* @GFX_FW_TYPE_SDMA4, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %97

24:                                               ; preds = %2
  %25 = load i32, i32* @GFX_FW_TYPE_SDMA5, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %97

27:                                               ; preds = %2
  %28 = load i32, i32* @GFX_FW_TYPE_SDMA6, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %97

30:                                               ; preds = %2
  %31 = load i32, i32* @GFX_FW_TYPE_SDMA7, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %97

33:                                               ; preds = %2
  %34 = load i32, i32* @GFX_FW_TYPE_CP_CE, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %97

36:                                               ; preds = %2
  %37 = load i32, i32* @GFX_FW_TYPE_CP_PFP, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %97

39:                                               ; preds = %2
  %40 = load i32, i32* @GFX_FW_TYPE_CP_ME, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %97

42:                                               ; preds = %2
  %43 = load i32, i32* @GFX_FW_TYPE_CP_MEC, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %97

45:                                               ; preds = %2
  %46 = load i32, i32* @GFX_FW_TYPE_CP_MEC_ME1, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %97

48:                                               ; preds = %2
  %49 = load i32, i32* @GFX_FW_TYPE_CP_MEC, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %97

51:                                               ; preds = %2
  %52 = load i32, i32* @GFX_FW_TYPE_CP_MEC_ME2, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %97

54:                                               ; preds = %2
  %55 = load i32, i32* @GFX_FW_TYPE_RLC_G, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %97

57:                                               ; preds = %2
  %58 = load i32, i32* @GFX_FW_TYPE_RLC_RESTORE_LIST_SRM_CNTL, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %97

60:                                               ; preds = %2
  %61 = load i32, i32* @GFX_FW_TYPE_RLC_RESTORE_LIST_GPM_MEM, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %97

63:                                               ; preds = %2
  %64 = load i32, i32* @GFX_FW_TYPE_RLC_RESTORE_LIST_SRM_MEM, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %97

66:                                               ; preds = %2
  %67 = load i32, i32* @GFX_FW_TYPE_SMU, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  br label %97

69:                                               ; preds = %2
  %70 = load i32, i32* @GFX_FW_TYPE_UVD, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %97

72:                                               ; preds = %2
  %73 = load i32, i32* @GFX_FW_TYPE_UVD1, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %97

75:                                               ; preds = %2
  %76 = load i32, i32* @GFX_FW_TYPE_VCE, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %97

78:                                               ; preds = %2
  %79 = load i32, i32* @GFX_FW_TYPE_VCN, align 4
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  br label %97

81:                                               ; preds = %2
  %82 = load i32, i32* @GFX_FW_TYPE_DMCU_ERAM, align 4
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  br label %97

84:                                               ; preds = %2
  %85 = load i32, i32* @GFX_FW_TYPE_DMCU_ISR, align 4
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  br label %97

87:                                               ; preds = %2
  %88 = load i32, i32* @GFX_FW_TYPE_VCN0_RAM, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  br label %97

90:                                               ; preds = %2
  %91 = load i32, i32* @GFX_FW_TYPE_VCN1_RAM, align 4
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  br label %97

93:                                               ; preds = %2
  br label %94

94:                                               ; preds = %2, %93
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
