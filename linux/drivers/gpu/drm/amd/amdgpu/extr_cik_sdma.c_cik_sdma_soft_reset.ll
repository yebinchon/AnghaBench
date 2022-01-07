; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmSRBM_STATUS2 = common dso_local global i64 0, align 8
@SRBM_STATUS2__SDMA_BUSY_MASK = common dso_local global i32 0, align 4
@mmSDMA0_F32_CNTL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA0_F32_CNTL__HALT_MASK = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS2__SDMA1_BUSY_MASK = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK = common dso_local global i32 0, align 4
@mmSRBM_SOFT_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cik_sdma_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_sdma_soft_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load i64, i64* @mmSRBM_STATUS2, align 8
  %9 = call i32 @RREG32(i64 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SRBM_STATUS2__SDMA_BUSY_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i64, i64* @mmSDMA0_F32_CNTL, align 8
  %16 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @RREG32(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @SDMA0_F32_CNTL__HALT_MASK, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* @mmSDMA0_F32_CNTL, align 8
  %23 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @WREG32(i64 %24, i32 %25)
  %27 = load i32, i32* @SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %14, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SRBM_STATUS2__SDMA1_BUSY_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i64, i64* @mmSDMA0_F32_CNTL, align 8
  %37 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @RREG32(i64 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @SDMA0_F32_CNTL__HALT_MASK, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i64, i64* @mmSDMA0_F32_CNTL, align 8
  %44 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @WREG32(i64 %45, i32 %46)
  %48 = load i32, i32* @SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %35, %30
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %56 = call i32 @RREG32(i64 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @WREG32(i64 %65, i32 %66)
  %68 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %69 = call i32 @RREG32(i64 %68)
  store i32 %69, i32* %5, align 4
  %70 = call i32 @udelay(i32 50)
  %71 = load i32, i32* %3, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @WREG32(i64 %75, i32 %76)
  %78 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %79 = call i32 @RREG32(i64 %78)
  store i32 %79, i32* %5, align 4
  %80 = call i32 @udelay(i32 50)
  br label %81

81:                                               ; preds = %54, %51
  ret i32 0
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
