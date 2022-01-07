; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_enable_sdma_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_enable_sdma_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_SDMA_MGCG = common dso_local global i32 0, align 4
@mmSDMA0_CLK_CTRL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @cik_enable_sdma_mgcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_enable_sdma_mgcg(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AMD_CG_SUPPORT_SDMA_MGCG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %18 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @WREG32(i64 %19, i32 256)
  %21 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %22 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @WREG32(i64 %23, i32 256)
  br label %58

25:                                               ; preds = %9, %2
  %26 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %27 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @RREG32(i64 %28)
  store i32 %29, i32* %6, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, -16777216
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %37 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @WREG32(i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %25
  %42 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %43 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @RREG32(i64 %44)
  store i32 %45, i32* %6, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, -16777216
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %53 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @WREG32(i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %41
  br label %58

58:                                               ; preds = %57, %16
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
