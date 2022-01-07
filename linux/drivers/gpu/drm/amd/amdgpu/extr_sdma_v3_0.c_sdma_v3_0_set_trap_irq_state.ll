; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_set_trap_irq_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_set_trap_irq_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@mmSDMA0_CNTL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA0_CNTL = common dso_local global i32 0, align 4
@TRAP_ENABLE = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @sdma_v3_0_set_trap_irq_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v3_0_set_trap_irq_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
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
  switch i32 %10, label %75 [
    i32 129, label %11
    i32 128, label %43
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %41 [
    i32 131, label %13
    i32 130, label %27
  ]

13:                                               ; preds = %11
  %14 = load i64, i64* @mmSDMA0_CNTL, align 8
  %15 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @RREG32(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SDMA0_CNTL, align 4
  %20 = load i32, i32* @TRAP_ENABLE, align 4
  %21 = call i32 @REG_SET_FIELD(i32 %18, i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* @mmSDMA0_CNTL, align 8
  %23 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @WREG32(i64 %24, i32 %25)
  br label %42

27:                                               ; preds = %11
  %28 = load i64, i64* @mmSDMA0_CNTL, align 8
  %29 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @RREG32(i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SDMA0_CNTL, align 4
  %34 = load i32, i32* @TRAP_ENABLE, align 4
  %35 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %34, i32 1)
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* @mmSDMA0_CNTL, align 8
  %37 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @WREG32(i64 %38, i32 %39)
  br label %42

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41, %27, %13
  br label %76

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %73 [
    i32 131, label %45
    i32 130, label %59
  ]

45:                                               ; preds = %43
  %46 = load i64, i64* @mmSDMA0_CNTL, align 8
  %47 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @RREG32(i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @SDMA0_CNTL, align 4
  %52 = load i32, i32* @TRAP_ENABLE, align 4
  %53 = call i32 @REG_SET_FIELD(i32 %50, i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i64, i64* @mmSDMA0_CNTL, align 8
  %55 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @WREG32(i64 %56, i32 %57)
  br label %74

59:                                               ; preds = %43
  %60 = load i64, i64* @mmSDMA0_CNTL, align 8
  %61 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @RREG32(i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @SDMA0_CNTL, align 4
  %66 = load i32, i32* @TRAP_ENABLE, align 4
  %67 = call i32 @REG_SET_FIELD(i32 %64, i32 %65, i32 %66, i32 1)
  store i32 %67, i32* %9, align 4
  %68 = load i64, i64* @mmSDMA0_CNTL, align 8
  %69 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @WREG32(i64 %70, i32 %71)
  br label %74

73:                                               ; preds = %43
  br label %74

74:                                               ; preds = %73, %59, %45
  br label %76

75:                                               ; preds = %4
  br label %76

76:                                               ; preds = %75, %74, %42
  ret i32 0
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
