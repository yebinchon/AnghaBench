; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmMM_ATC_L2_MISC_CG = common dso_local global i32 0, align 4
@mmDAGB0_CNTL_MISC2 = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_MC_MGCG = common dso_local global i32 0, align 4
@MM_ATC_L2_MISC_CG__ENABLE_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v2_0_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v2_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @MMHUB, align 4
  %10 = load i32, i32* @mmMM_ATC_L2_MISC_CG, align 4
  %11 = call i32 @RREG32_SOC15(i32 %9, i32 0, i32 %10)
  store i32 %11, i32* %6, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MMHUB, align 4
  %13 = load i32, i32* @mmDAGB0_CNTL_MISC2, align 4
  %14 = call i32 @RREG32_SOC15(i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %8, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AMD_CG_SUPPORT_MC_MGCG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load i32, i32* @MM_ATC_L2_MISC_CG__ENABLE_MASK, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK, align 4
  %29 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %60

42:                                               ; preds = %17, %2
  %43 = load i32, i32* @MM_ATC_L2_MISC_CG__ENABLE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK, align 4
  %48 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %42, %24
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @MMHUB, align 4
  %66 = load i32, i32* @mmMM_ATC_L2_MISC_CG, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @WREG32_SOC15(i32 %65, i32 0, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* @MMHUB, align 4
  %75 = load i32, i32* @mmDAGB0_CNTL_MISC2, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @WREG32_SOC15(i32 %74, i32 0, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %69
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
