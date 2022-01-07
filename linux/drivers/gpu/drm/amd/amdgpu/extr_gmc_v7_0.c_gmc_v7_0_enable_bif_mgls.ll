; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_enable_bif_mgls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_enable_bif_mgls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@ixPCIE_CNTL2 = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_BIF_LS = common dso_local global i32 0, align 4
@PCIE_CNTL2 = common dso_local global i32 0, align 4
@SLV_MEM_LS_EN = common dso_local global i32 0, align 4
@MST_MEM_LS_EN = common dso_local global i32 0, align 4
@REPLAY_MEM_LS_EN = common dso_local global i32 0, align 4
@SLV_MEM_AGGRESSIVE_LS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gmc_v7_0_enable_bif_mgls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v7_0_enable_bif_mgls(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ixPCIE_CNTL2, align 4
  %8 = call i64 @RREG32_PCIE(i32 %7)
  store i64 %8, i64* %6, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AMD_CG_SUPPORT_BIF_LS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %11
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @PCIE_CNTL2, align 4
  %21 = load i32, i32* @SLV_MEM_LS_EN, align 4
  %22 = call i64 @REG_SET_FIELD(i64 %19, i32 %20, i32 %21, i32 1)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @PCIE_CNTL2, align 4
  %25 = load i32, i32* @MST_MEM_LS_EN, align 4
  %26 = call i64 @REG_SET_FIELD(i64 %23, i32 %24, i32 %25, i32 1)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @PCIE_CNTL2, align 4
  %29 = load i32, i32* @REPLAY_MEM_LS_EN, align 4
  %30 = call i64 @REG_SET_FIELD(i64 %27, i32 %28, i32 %29, i32 1)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @PCIE_CNTL2, align 4
  %33 = load i32, i32* @SLV_MEM_AGGRESSIVE_LS_EN, align 4
  %34 = call i64 @REG_SET_FIELD(i64 %31, i32 %32, i32 %33, i32 1)
  store i64 %34, i64* %6, align 8
  br label %52

35:                                               ; preds = %11, %2
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @PCIE_CNTL2, align 4
  %38 = load i32, i32* @SLV_MEM_LS_EN, align 4
  %39 = call i64 @REG_SET_FIELD(i64 %36, i32 %37, i32 %38, i32 0)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @PCIE_CNTL2, align 4
  %42 = load i32, i32* @MST_MEM_LS_EN, align 4
  %43 = call i64 @REG_SET_FIELD(i64 %40, i32 %41, i32 %42, i32 0)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @PCIE_CNTL2, align 4
  %46 = load i32, i32* @REPLAY_MEM_LS_EN, align 4
  %47 = call i64 @REG_SET_FIELD(i64 %44, i32 %45, i32 %46, i32 0)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* @PCIE_CNTL2, align 4
  %50 = load i32, i32* @SLV_MEM_AGGRESSIVE_LS_EN, align 4
  %51 = call i64 @REG_SET_FIELD(i64 %48, i32 %49, i32 %50, i32 0)
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %35, %18
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @ixPCIE_CNTL2, align 4
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @WREG32_PCIE(i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %52
  ret void
}

declare dso_local i64 @RREG32_PCIE(i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
