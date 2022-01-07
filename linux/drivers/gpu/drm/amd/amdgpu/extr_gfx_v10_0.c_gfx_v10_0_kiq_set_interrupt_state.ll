; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_set_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_set_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i64 }
%struct.amdgpu_irq_src = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_ME1_PIPE0_INT_CNTL = common dso_local global i32 0, align 4
@mmCP_ME2_PIPE0_INT_CNTL = common dso_local global i32 0, align 4
@AMDGPU_IRQ_STATE_DISABLE = common dso_local global i32 0, align 4
@mmCPC_INT_CNTL = common dso_local global i32 0, align 4
@CPC_INT_CNTL = common dso_local global i32 0, align 4
@GENERIC2_INT_ENABLE = common dso_local global i32 0, align 4
@CP_ME2_PIPE0_INT_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @gfx_v10_0_kiq_set_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_kiq_set_interrupt_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.amdgpu_ring* %15, %struct.amdgpu_ring** %11, align 8
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @GC, align 4
  %22 = load i32, i32* @mmCP_ME1_PIPE0_INT_CNTL, align 4
  %23 = call i32 @SOC15_REG_OFFSET(i32 %21, i32 0, i32 %22)
  store i32 %23, i32* %10, align 4
  br label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @GC, align 4
  %26 = load i32, i32* @mmCP_ME2_PIPE0_INT_CNTL, align 4
  %27 = call i32 @SOC15_REG_OFFSET(i32 %25, i32 0, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %84 [
    i32 128, label %37
  ]

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @AMDGPU_IRQ_STATE_DISABLE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load i32, i32* @GC, align 4
  %43 = load i32, i32* @mmCPC_INT_CNTL, align 4
  %44 = call i32 @RREG32_SOC15(i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @CPC_INT_CNTL, align 4
  %47 = load i32, i32* @GENERIC2_INT_ENABLE, align 4
  %48 = call i32 @REG_SET_FIELD(i32 %45, i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @GC, align 4
  %50 = load i32, i32* @mmCPC_INT_CNTL, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @WREG32_SOC15(i32 %49, i32 0, i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @RREG32(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @CP_ME2_PIPE0_INT_CNTL, align 4
  %57 = load i32, i32* @GENERIC2_INT_ENABLE, align 4
  %58 = call i32 @REG_SET_FIELD(i32 %55, i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @WREG32(i32 %59, i32 %60)
  br label %83

62:                                               ; preds = %37
  %63 = load i32, i32* @GC, align 4
  %64 = load i32, i32* @mmCPC_INT_CNTL, align 4
  %65 = call i32 @RREG32_SOC15(i32 %63, i32 0, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @CPC_INT_CNTL, align 4
  %68 = load i32, i32* @GENERIC2_INT_ENABLE, align 4
  %69 = call i32 @REG_SET_FIELD(i32 %66, i32 %67, i32 %68, i32 1)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @GC, align 4
  %71 = load i32, i32* @mmCPC_INT_CNTL, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @WREG32_SOC15(i32 %70, i32 0, i32 %71, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @RREG32(i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @CP_ME2_PIPE0_INT_CNTL, align 4
  %78 = load i32, i32* @GENERIC2_INT_ENABLE, align 4
  %79 = call i32 @REG_SET_FIELD(i32 %76, i32 %77, i32 %78, i32 1)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @WREG32(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %62, %41
  br label %86

84:                                               ; preds = %28
  %85 = call i32 (...) @BUG()
  br label %86

86:                                               ; preds = %84, %83
  ret i32 0
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
