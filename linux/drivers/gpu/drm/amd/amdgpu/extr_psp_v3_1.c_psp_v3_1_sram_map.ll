; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v3_1.c_psp_v3_1_sram_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v3_1.c_psp_v3_1_sram_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_HYP_ME_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_HYP_ME_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_MEC_ME1_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_MEC_ME1_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_HYP_MEC2_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_HYP_MEC2_UCODE_DATA = common dso_local global i32 0, align 4
@mmRLC_GPM_UCODE_ADDR = common dso_local global i32 0, align 4
@mmRLC_GPM_UCODE_DATA = common dso_local global i32 0, align 4
@SDMA0 = common dso_local global i32 0, align 4
@mmSDMA0_UCODE_ADDR = common dso_local global i32 0, align 4
@mmSDMA0_UCODE_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32*, i32*, i32*, i32)* @psp_v3_1_sram_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v3_1_sram_map(%struct.amdgpu_device* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  switch i32 %12, label %84 [
    i32 139, label %13
    i32 135, label %23
    i32 138, label %33
    i32 137, label %43
    i32 136, label %53
    i32 133, label %63
    i32 132, label %73
    i32 134, label %83
  ]

13:                                               ; preds = %5
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @GC, align 4
  %16 = load i32, i32* @mmCP_CE_UCODE_ADDR, align 4
  %17 = call i32 @SOC15_REG_OFFSET(i32 %15, i32 0, i32 %16)
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @GC, align 4
  %20 = load i32, i32* @mmCP_CE_UCODE_DATA, align 4
  %21 = call i32 @SOC15_REG_OFFSET(i32 %19, i32 0, i32 %20)
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  br label %87

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @GC, align 4
  %26 = load i32, i32* @mmCP_PFP_UCODE_ADDR, align 4
  %27 = call i32 @SOC15_REG_OFFSET(i32 %25, i32 0, i32 %26)
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @GC, align 4
  %30 = load i32, i32* @mmCP_PFP_UCODE_DATA, align 4
  %31 = call i32 @SOC15_REG_OFFSET(i32 %29, i32 0, i32 %30)
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %87

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @GC, align 4
  %36 = load i32, i32* @mmCP_HYP_ME_UCODE_ADDR, align 4
  %37 = call i32 @SOC15_REG_OFFSET(i32 %35, i32 0, i32 %36)
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @GC, align 4
  %40 = load i32, i32* @mmCP_HYP_ME_UCODE_DATA, align 4
  %41 = call i32 @SOC15_REG_OFFSET(i32 %39, i32 0, i32 %40)
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %87

43:                                               ; preds = %5
  %44 = load i32*, i32** %7, align 8
  store i32 65536, i32* %44, align 4
  %45 = load i32, i32* @GC, align 4
  %46 = load i32, i32* @mmCP_MEC_ME1_UCODE_ADDR, align 4
  %47 = call i32 @SOC15_REG_OFFSET(i32 %45, i32 0, i32 %46)
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @GC, align 4
  %50 = load i32, i32* @mmCP_MEC_ME1_UCODE_DATA, align 4
  %51 = call i32 @SOC15_REG_OFFSET(i32 %49, i32 0, i32 %50)
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %87

53:                                               ; preds = %5
  %54 = load i32*, i32** %7, align 8
  store i32 65536, i32* %54, align 4
  %55 = load i32, i32* @GC, align 4
  %56 = load i32, i32* @mmCP_HYP_MEC2_UCODE_ADDR, align 4
  %57 = call i32 @SOC15_REG_OFFSET(i32 %55, i32 0, i32 %56)
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @GC, align 4
  %60 = load i32, i32* @mmCP_HYP_MEC2_UCODE_DATA, align 4
  %61 = call i32 @SOC15_REG_OFFSET(i32 %59, i32 0, i32 %60)
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %87

63:                                               ; preds = %5
  %64 = load i32*, i32** %7, align 8
  store i32 8192, i32* %64, align 4
  %65 = load i32, i32* @GC, align 4
  %66 = load i32, i32* @mmRLC_GPM_UCODE_ADDR, align 4
  %67 = call i32 @SOC15_REG_OFFSET(i32 %65, i32 0, i32 %66)
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @GC, align 4
  %70 = load i32, i32* @mmRLC_GPM_UCODE_DATA, align 4
  %71 = call i32 @SOC15_REG_OFFSET(i32 %69, i32 0, i32 %70)
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %87

73:                                               ; preds = %5
  %74 = load i32*, i32** %7, align 8
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @SDMA0, align 4
  %76 = load i32, i32* @mmSDMA0_UCODE_ADDR, align 4
  %77 = call i32 @SOC15_REG_OFFSET(i32 %75, i32 0, i32 %76)
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @SDMA0, align 4
  %80 = load i32, i32* @mmSDMA0_UCODE_DATA, align 4
  %81 = call i32 @SOC15_REG_OFFSET(i32 %79, i32 0, i32 %80)
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %87

83:                                               ; preds = %5
  br label %84

84:                                               ; preds = %5, %83
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %84, %73, %63, %53, %43, %33, %23, %13
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
