; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_get_clockgating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_get_clockgating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmATCL2_0_ATC_L2_MISC_CG = common dso_local global i32 0, align 4
@ATCL2_0_ATC_L2_MISC_CG__ENABLE_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_MC_MGCG = common dso_local global i32 0, align 4
@ATCL2_0_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_MC_LS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmhub_v9_4_get_clockgating(%struct.amdgpu_device* %0, i32* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* @MMHUB, align 4
  %14 = load i32, i32* @mmATCL2_0_ATC_L2_MISC_CG, align 4
  %15 = call i32 @RREG32_SOC15(i32 %13, i32 0, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @MMHUB, align 4
  %17 = load i32, i32* @mmATCL2_0_ATC_L2_MISC_CG, align 4
  %18 = call i32 @RREG32_SOC15(i32 %16, i32 0, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ATCL2_0_ATC_L2_MISC_CG__ENABLE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK, align 4
  %26 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %24, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* @AMD_CG_SUPPORT_MC_MGCG, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %23, %12
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ATCL2_0_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @AMD_CG_SUPPORT_MC_LS, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %43
  ret void
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
