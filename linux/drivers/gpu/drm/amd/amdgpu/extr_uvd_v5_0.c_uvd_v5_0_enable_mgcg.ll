; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_enable_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_enable_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_UVD_MGCG = common dso_local global i32 0, align 4
@ixUVD_CGC_MEM_CTRL = common dso_local global i32 0, align 4
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @uvd_v5_0_enable_mgcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v5_0_enable_mgcg(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AMD_CG_SUPPORT_UVD_MGCG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %9
  %17 = load i32, i32* @ixUVD_CGC_MEM_CTRL, align 4
  %18 = call i32 @RREG32_UVD_CTX(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 4095
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @ixUVD_CGC_MEM_CTRL, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @WREG32_UVD_CTX(i32 %21, i32 %22)
  %24 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %6, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @WREG32(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %16
  br label %59

37:                                               ; preds = %9, %2
  %38 = load i32, i32* @ixUVD_CGC_MEM_CTRL, align 4
  %39 = call i32 @RREG32_UVD_CTX(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, -4096
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @ixUVD_CGC_MEM_CTRL, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @WREG32_UVD_CTX(i32 %42, i32 %43)
  %45 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %46 = call i32 @RREG32(i32 %45)
  store i32 %46, i32* %6, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %37
  %55 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @WREG32(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %37
  br label %59

59:                                               ; preds = %58, %36
  ret void
}

declare dso_local i32 @RREG32_UVD_CTX(i32) #1

declare dso_local i32 @WREG32_UVD_CTX(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
