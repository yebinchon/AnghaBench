; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_ctx_switch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_ctx_switch_enable.c"
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
@mmSDMA0_CNTL = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@SDMA0_CNTL = common dso_local global i32 0, align 4
@AUTO_CTXSW_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_PHASE0_QUANTUM = common dso_local global i64 0, align 8
@mmSDMA0_PHASE1_QUANTUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @cik_ctx_switch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_ctx_switch_enable(%struct.amdgpu_device* %0, i32 %1) #0 {
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

52:                                               ; preds = %112, %51
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %115

59:                                               ; preds = %52
  %60 = load i64, i64* @mmSDMA0_CNTL, align 8
  %61 = load i64*, i64** @sdma_offsets, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %60, %65
  %67 = call i32 @RREG32(i64 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %59
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @SDMA0_CNTL, align 4
  %73 = load i32, i32* @AUTO_CTXSW_ENABLE, align 4
  %74 = call i32 @REG_SET_FIELD(i32 %71, i32 %72, i32 %73, i32 1)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @amdgpu_sdma_phase_quantum, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %70
  %78 = load i64, i64* @mmSDMA0_PHASE0_QUANTUM, align 8
  %79 = load i64*, i64** @sdma_offsets, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %78, %83
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @WREG32(i64 %84, i32 %85)
  %87 = load i64, i64* @mmSDMA0_PHASE1_QUANTUM, align 8
  %88 = load i64*, i64** @sdma_offsets, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %87, %92
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @WREG32(i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %77, %70
  br label %102

97:                                               ; preds = %59
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @SDMA0_CNTL, align 4
  %100 = load i32, i32* @AUTO_CTXSW_ENABLE, align 4
  %101 = call i32 @REG_SET_FIELD(i32 %98, i32 %99, i32 %100, i32 0)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %97, %96
  %103 = load i64, i64* @mmSDMA0_CNTL, align 8
  %104 = load i64*, i64** @sdma_offsets, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %103, %108
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @WREG32(i64 %109, i32 %110)
  br label %112

112:                                              ; preds = %102
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %52

115:                                              ; preds = %52
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
