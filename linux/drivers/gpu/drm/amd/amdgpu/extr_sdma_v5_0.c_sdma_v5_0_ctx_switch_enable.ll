; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ctx_switch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ctx_switch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@amdgpu_sdma_phase_quantum = common dso_local global i32 0, align 4
@SDMA0_PHASE0_QUANTUM__VALUE_MASK = common dso_local global i32 0, align 4
@SDMA0_PHASE0_QUANTUM__VALUE__SHIFT = common dso_local global i32 0, align 4
@SDMA0_PHASE0_QUANTUM__UNIT_MASK = common dso_local global i32 0, align 4
@SDMA0_PHASE0_QUANTUM__UNIT__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"clamping sdma_phase_quantum to %uK clock cycles\0A\00", align 1
@mmSDMA0_CNTL = common dso_local global i32 0, align 4
@SDMA0_CNTL = common dso_local global i32 0, align 4
@AUTO_CTXSW_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_PHASE0_QUANTUM = common dso_local global i32 0, align 4
@mmSDMA0_PHASE1_QUANTUM = common dso_local global i32 0, align 4
@mmSDMA0_PHASE2_QUANTUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @sdma_v5_0_ctx_switch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v5_0_ctx_switch_enable(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @amdgpu_sdma_phase_quantum, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load i32, i32* @amdgpu_sdma_phase_quantum, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %20, %12
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SDMA0_PHASE0_QUANTUM__VALUE_MASK, align 4
  %17 = load i32, i32* @SDMA0_PHASE0_QUANTUM__VALUE__SHIFT, align 4
  %18 = lshr i32 %16, %17
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %21, 1
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SDMA0_PHASE0_QUANTUM__UNIT_MASK, align 4
  %29 = load i32, i32* @SDMA0_PHASE0_QUANTUM__UNIT__SHIFT, align 4
  %30 = lshr i32 %28, %29
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32, i32* @SDMA0_PHASE0_QUANTUM__VALUE_MASK, align 4
  %34 = load i32, i32* @SDMA0_PHASE0_QUANTUM__VALUE__SHIFT, align 4
  %35 = lshr i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @SDMA0_PHASE0_QUANTUM__UNIT_MASK, align 4
  %37 = load i32, i32* @SDMA0_PHASE0_QUANTUM__UNIT__SHIFT, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %32, %26
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SDMA0_PHASE0_QUANTUM__VALUE__SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @SDMA0_PHASE0_QUANTUM__UNIT__SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %43, %2
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %104, %51
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %52
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @mmSDMA0_CNTL, align 4
  %63 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %60, i32 %61, i32 %62)
  %64 = call i32 @RREG32(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SDMA0_CNTL, align 4
  %67 = load i32, i32* @AUTO_CTXSW_ENABLE, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = call i32 @REG_SET_FIELD(i32 %65, i32 %66, i32 %67, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %59
  %76 = load i32, i32* @amdgpu_sdma_phase_quantum, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @mmSDMA0_PHASE0_QUANTUM, align 4
  %82 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @WREG32(i32 %82, i32 %83)
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @mmSDMA0_PHASE1_QUANTUM, align 4
  %88 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %85, i32 %86, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @WREG32(i32 %88, i32 %89)
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @mmSDMA0_PHASE2_QUANTUM, align 4
  %94 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %78, %75, %59
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @mmSDMA0_CNTL, align 4
  %101 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %98, i32 %99, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @WREG32(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %52

107:                                              ; preds = %52
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
