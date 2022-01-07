; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_enable_uvd_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_enable_uvd_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CG_SUPPORT_UVD_MGCG = common dso_local global i32 0, align 4
@UVD_CGC_MEM_CTRL = common dso_local global i32 0, align 4
@UVD_CGC_CTRL = common dso_local global i32 0, align 4
@DCM = common dso_local global i32 0, align 4
@SMC_CG_IND_START = common dso_local global i64 0, align 8
@CG_CGTT_LOCAL_0 = common dso_local global i64 0, align 8
@CG_CGTT_LOCAL_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @si_enable_uvd_mgcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_enable_uvd_mgcg(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RADEON_CG_SUPPORT_UVD_MGCG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %10
  %18 = load i32, i32* @UVD_CGC_MEM_CTRL, align 4
  %19 = call i32 @RREG32_UVD_CTX(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 16383
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @UVD_CGC_MEM_CTRL, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @WREG32_UVD_CTX(i32 %22, i32 %23)
  %25 = load i32, i32* @UVD_CGC_CTRL, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %6, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @DCM, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load i32, i32* @UVD_CGC_CTRL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @WREG32(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %17
  %38 = load i64, i64* @SMC_CG_IND_START, align 8
  %39 = load i64, i64* @CG_CGTT_LOCAL_0, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @WREG32_SMC(i64 %40, i32 0)
  %42 = load i64, i64* @SMC_CG_IND_START, align 8
  %43 = load i64, i64* @CG_CGTT_LOCAL_1, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @WREG32_SMC(i64 %44, i32 0)
  br label %76

46:                                               ; preds = %10, %2
  %47 = load i32, i32* @UVD_CGC_MEM_CTRL, align 4
  %48 = call i32 @RREG32_UVD_CTX(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, -16384
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @UVD_CGC_MEM_CTRL, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @WREG32_UVD_CTX(i32 %51, i32 %52)
  %54 = load i32, i32* @UVD_CGC_CTRL, align 4
  %55 = call i32 @RREG32(i32 %54)
  store i32 %55, i32* %6, align 4
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @DCM, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load i32, i32* @UVD_CGC_CTRL, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @WREG32(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %46
  %68 = load i64, i64* @SMC_CG_IND_START, align 8
  %69 = load i64, i64* @CG_CGTT_LOCAL_0, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @WREG32_SMC(i64 %70, i32 -1)
  %72 = load i64, i64* @SMC_CG_IND_START, align 8
  %73 = load i64, i64* @CG_CGTT_LOCAL_1, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @WREG32_SMC(i64 %74, i32 -1)
  br label %76

76:                                               ; preds = %67, %37
  ret void
}

declare dso_local i32 @RREG32_UVD_CTX(i32) #1

declare dso_local i32 @WREG32_UVD_CTX(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_SMC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
