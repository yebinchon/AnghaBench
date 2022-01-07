; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_disable_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_disable_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CP_INT_CNTL_RING0 = common dso_local global i64 0, align 8
@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING1 = common dso_local global i64 0, align 8
@CP_INT_CNTL_RING2 = common dso_local global i64 0, align 8
@DMA_CNTL = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@SRBM_INT_CNTL = common dso_local global i64 0, align 8
@INT_MASK = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@GRPH_INT_CONTROL = common dso_local global i64 0, align 8
@DAC_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPDx_INT_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_disable_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_disable_interrupt_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %6 = call i32 @RREG32(i64 %5)
  %7 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %8 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @WREG32(i64 %11, i32 %12)
  %14 = load i64, i64* @CP_INT_CNTL_RING1, align 8
  %15 = call i32 @WREG32(i64 %14, i32 0)
  %16 = load i64, i64* @CP_INT_CNTL_RING2, align 8
  %17 = call i32 @WREG32(i64 %16, i32 0)
  %18 = load i64, i64* @DMA_CNTL, align 8
  %19 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @RREG32(i64 %20)
  %22 = load i32, i32* @TRAP_ENABLE, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %4, align 4
  %25 = load i64, i64* @DMA_CNTL, align 8
  %26 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @WREG32(i64 %27, i32 %28)
  %30 = load i64, i64* @DMA_CNTL, align 8
  %31 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @RREG32(i64 %32)
  %34 = load i32, i32* @TRAP_ENABLE, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  store i32 %36, i32* %4, align 4
  %37 = load i64, i64* @DMA_CNTL, align 8
  %38 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @WREG32(i64 %39, i32 %40)
  %42 = load i64, i64* @GRBM_INT_CNTL, align 8
  %43 = call i32 @WREG32(i64 %42, i32 0)
  %44 = load i64, i64* @SRBM_INT_CNTL, align 8
  %45 = call i32 @WREG32(i64 %44, i32 0)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %61, %1
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i64, i64* @INT_MASK, align 8
  %54 = load i64*, i64** @crtc_offsets, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %53, %58
  %60 = call i32 @WREG32(i64 %59, i32 0)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %46

64:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %73 = load i64*, i64** @crtc_offsets, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %72, %77
  %79 = call i32 @WREG32(i64 %78, i32 0)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = call i32 @ASIC_IS_NODCE(%struct.radeon_device* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* @DAC_AUTODETECT_INT_CONTROL, align 8
  %89 = call i32 @WREG32(i64 %88, i32 0)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %98, %87
  %91 = load i32, i32* %3, align 4
  %92 = icmp slt i32 %91, 6
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @DC_HPDx_INT_CONTROL(i32 %94)
  %96 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %97 = call i32 @WREG32_AND(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %90

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %83
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @ASIC_IS_NODCE(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_AND(i32, i32) #1

declare dso_local i32 @DC_HPDx_INT_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
