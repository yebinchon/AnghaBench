; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_set_trap_irq_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_set_trap_irq_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@mmSDMA0_CNTL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA0_CNTL__TRAP_ENABLE_MASK = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @cik_sdma_set_trap_irq_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_sdma_set_trap_irq_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %73 [
    i32 129, label %11
    i32 128, label %42
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %40 [
    i32 131, label %13
    i32 130, label %27
  ]

13:                                               ; preds = %11
  %14 = load i64, i64* @mmSDMA0_CNTL, align 8
  %15 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @RREG32(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @SDMA0_CNTL__TRAP_ENABLE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* @mmSDMA0_CNTL, align 8
  %23 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @WREG32(i64 %24, i32 %25)
  br label %41

27:                                               ; preds = %11
  %28 = load i64, i64* @mmSDMA0_CNTL, align 8
  %29 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @RREG32(i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @SDMA0_CNTL__TRAP_ENABLE_MASK, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i64, i64* @mmSDMA0_CNTL, align 8
  %36 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @WREG32(i64 %37, i32 %38)
  br label %41

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %40, %27, %13
  br label %74

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %71 [
    i32 131, label %44
    i32 130, label %58
  ]

44:                                               ; preds = %42
  %45 = load i64, i64* @mmSDMA0_CNTL, align 8
  %46 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @RREG32(i64 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @SDMA0_CNTL__TRAP_ENABLE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i64, i64* @mmSDMA0_CNTL, align 8
  %54 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @WREG32(i64 %55, i32 %56)
  br label %72

58:                                               ; preds = %42
  %59 = load i64, i64* @mmSDMA0_CNTL, align 8
  %60 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @RREG32(i64 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @SDMA0_CNTL__TRAP_ENABLE_MASK, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i64, i64* @mmSDMA0_CNTL, align 8
  %67 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @WREG32(i64 %68, i32 %69)
  br label %72

71:                                               ; preds = %42
  br label %72

72:                                               ; preds = %71, %58, %44
  br label %74

73:                                               ; preds = %4
  br label %74

74:                                               ; preds = %73, %72, %41
  ret i32 0
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
