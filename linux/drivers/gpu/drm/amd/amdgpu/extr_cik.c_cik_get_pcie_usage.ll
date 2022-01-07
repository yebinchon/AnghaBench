; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_get_pcie_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_get_pcie_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@PCIE_PERF_CNTL_TXCLK = common dso_local global i32 0, align 4
@EVENT0_SEL = common dso_local global i32 0, align 4
@EVENT1_SEL = common dso_local global i32 0, align 4
@ixPCIE_PERF_CNTL_TXCLK = common dso_local global i32 0, align 4
@ixPCIE_PERF_COUNT_CNTL = common dso_local global i32 0, align 4
@COUNTER0_UPPER = common dso_local global i32 0, align 4
@COUNTER1_UPPER = common dso_local global i32 0, align 4
@ixPCIE_PERF_COUNT0_TXCLK = common dso_local global i32 0, align 4
@ixPCIE_PERF_COUNT1_TXCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32*, i32*)* @cik_get_pcie_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_get_pcie_usage(%struct.amdgpu_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AMD_IS_APU, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %57

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PCIE_PERF_CNTL_TXCLK, align 4
  %21 = load i32, i32* @EVENT0_SEL, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21, i32 40)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PCIE_PERF_CNTL_TXCLK, align 4
  %25 = load i32, i32* @EVENT1_SEL, align 4
  %26 = call i32 @REG_SET_FIELD(i32 %23, i32 %24, i32 %25, i32 104)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @ixPCIE_PERF_CNTL_TXCLK, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @WREG32_PCIE(i32 %27, i32 %28)
  %30 = load i32, i32* @ixPCIE_PERF_COUNT_CNTL, align 4
  %31 = call i32 @WREG32_PCIE(i32 %30, i32 5)
  %32 = call i32 @msleep(i32 1000)
  %33 = load i32, i32* @ixPCIE_PERF_COUNT_CNTL, align 4
  %34 = call i32 @WREG32_PCIE(i32 %33, i32 2)
  %35 = load i32, i32* @ixPCIE_PERF_CNTL_TXCLK, align 4
  %36 = call i32 @RREG32_PCIE(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PCIE_PERF_CNTL_TXCLK, align 4
  %39 = load i32, i32* @COUNTER0_UPPER, align 4
  %40 = call i32 @REG_GET_FIELD(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PCIE_PERF_CNTL_TXCLK, align 4
  %43 = load i32, i32* @COUNTER1_UPPER, align 4
  %44 = call i32 @REG_GET_FIELD(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @ixPCIE_PERF_COUNT0_TXCLK, align 4
  %46 = call i32 @RREG32_PCIE(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 32
  %49 = or i32 %46, %48
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @ixPCIE_PERF_COUNT1_TXCLK, align 4
  %52 = call i32 @RREG32_PCIE(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 32
  %55 = or i32 %52, %54
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
