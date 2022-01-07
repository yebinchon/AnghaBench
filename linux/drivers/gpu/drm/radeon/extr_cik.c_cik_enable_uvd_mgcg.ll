; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_enable_uvd_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_enable_uvd_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CG_SUPPORT_UVD_MGCG = common dso_local global i32 0, align 4
@UVD_CGC_MEM_CTRL = common dso_local global i32 0, align 4
@UVD_CGC_CTRL = common dso_local global i32 0, align 4
@DCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cik_enable_uvd_mgcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_enable_uvd_mgcg(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RADEON_CG_SUPPORT_UVD_MGCG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %9
  %17 = load i32, i32* @UVD_CGC_MEM_CTRL, align 4
  %18 = call i32 @RREG32_UVD_CTX(i32 %17)
  store i32 %18, i32* %6, align 4
  store i32 4095, i32* %6, align 4
  %19 = load i32, i32* @UVD_CGC_MEM_CTRL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @WREG32_UVD_CTX(i32 %19, i32 %20)
  %22 = load i32, i32* @UVD_CGC_CTRL, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %6, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @DCM, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load i32, i32* @UVD_CGC_CTRL, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %16
  br label %57

35:                                               ; preds = %9, %2
  %36 = load i32, i32* @UVD_CGC_MEM_CTRL, align 4
  %37 = call i32 @RREG32_UVD_CTX(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, -4096
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @UVD_CGC_MEM_CTRL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @WREG32_UVD_CTX(i32 %40, i32 %41)
  %43 = load i32, i32* @UVD_CGC_CTRL, align 4
  %44 = call i32 @RREG32(i32 %43)
  store i32 %44, i32* %6, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @DCM, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = load i32, i32* @UVD_CGC_CTRL, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @WREG32(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %35
  br label %57

57:                                               ; preds = %56, %34
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
