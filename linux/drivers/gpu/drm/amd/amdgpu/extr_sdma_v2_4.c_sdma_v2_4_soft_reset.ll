; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmSRBM_STATUS2 = common dso_local global i64 0, align 8
@SRBM_STATUS2__SDMA_BUSY_MASK = common dso_local global i32 0, align 4
@mmSDMA0_F32_CNTL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA0_F32_CNTL = common dso_local global i32 0, align 4
@HALT = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS2__SDMA1_BUSY_MASK = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK = common dso_local global i32 0, align 4
@mmSRBM_SOFT_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdma_v2_4_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v2_4_soft_reset(i8* %0) #0 {
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
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load i64, i64* @mmSDMA0_F32_CNTL, align 8
  %16 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @RREG32(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SDMA0_F32_CNTL, align 4
  %21 = load i32, i32* @HALT, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i64, i64* @mmSDMA0_F32_CNTL, align 8
  %24 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @WREG32(i64 %25, i32 %26)
  %28 = load i32, i32* @SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %14, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SRBM_STATUS2__SDMA1_BUSY_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i64, i64* @mmSDMA0_F32_CNTL, align 8
  %38 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @RREG32(i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SDMA0_F32_CNTL, align 4
  %43 = load i32, i32* @HALT, align 4
  %44 = call i32 @REG_SET_FIELD(i32 %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i64, i64* @mmSDMA0_F32_CNTL, align 8
  %46 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @WREG32(i64 %47, i32 %48)
  %50 = load i32, i32* @SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %36, %31
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %58 = call i32 @RREG32(i64 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @dev_info(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @WREG32(i64 %67, i32 %68)
  %70 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %71 = call i32 @RREG32(i64 %70)
  store i32 %71, i32* %5, align 4
  %72 = call i32 @udelay(i32 50)
  %73 = load i32, i32* %3, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @WREG32(i64 %77, i32 %78)
  %80 = load i64, i64* @mmSRBM_SOFT_RESET, align 8
  %81 = call i32 @RREG32(i64 %80)
  store i32 %81, i32* %5, align 4
  %82 = call i32 @udelay(i32 50)
  br label %83

83:                                               ; preds = %56, %53
  ret i32 0
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
