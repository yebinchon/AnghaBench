; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_umc_v6_1.c_umc_v6_1_ras_init_per_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_umc_v6_1.c_umc_v6_1_ras_init_per_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.ras_err_data = type { i32 }

@UMC = common dso_local global i32 0, align 4
@mmUMCCH0_0_EccErrCntSel = common dso_local global i32 0, align 4
@mmUMCCH0_0_EccErrCnt = common dso_local global i32 0, align 4
@UMCCH0_0_EccErrCntSel = common dso_local global i32 0, align 4
@EccErrCntCsSel = common dso_local global i32 0, align 4
@EccErrInt = common dso_local global i32 0, align 4
@UMC_V6_1_CE_CNT_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.ras_err_data*, i64, i64)* @umc_v6_1_ras_init_per_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umc_v6_1_ras_init_per_channel(%struct.amdgpu_device* %0, %struct.ras_err_data* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.ras_err_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.ras_err_data* %1, %struct.ras_err_data** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @UMC, align 4
  %13 = load i32, i32* @mmUMCCH0_0_EccErrCntSel, align 4
  %14 = call i64 @SOC15_REG_OFFSET(i32 %12, i32 0, i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i32, i32* @UMC, align 4
  %16 = load i32, i32* @mmUMCCH0_0_EccErrCnt, align 4
  %17 = call i64 @SOC15_REG_OFFSET(i32 %15, i32 0, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @RREG32(i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* @UMCCH0_0_EccErrCntSel, align 4
  %24 = load i32, i32* @EccErrCntCsSel, align 4
  %25 = call i64 @REG_SET_FIELD(i64 %22, i32 %23, i32 %24, i32 0)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @UMCCH0_0_EccErrCntSel, align 4
  %28 = load i32, i32* @EccErrInt, align 4
  %29 = call i64 @REG_SET_FIELD(i64 %26, i32 %27, i32 %28, i32 1)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @WREG32(i64 %32, i64 %33)
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* @UMC_V6_1_CE_CNT_INIT, align 8
  %39 = call i32 @WREG32(i64 %37, i64 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* @UMCCH0_0_EccErrCntSel, align 4
  %42 = load i32, i32* @EccErrCntCsSel, align 4
  %43 = call i64 @REG_SET_FIELD(i64 %40, i32 %41, i32 %42, i32 1)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @WREG32(i64 %46, i64 %47)
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* @UMC_V6_1_CE_CNT_INIT, align 8
  %53 = call i32 @WREG32(i64 %51, i64 %52)
  ret void
}

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i64 @RREG32(i64) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
