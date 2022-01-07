; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_disable_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_disable_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32 }

@CHIP_CAYMAN = common dso_local global i64 0, align 8
@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@CAYMAN_DMA1_CNTL = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@CP_INT_CNTL = common dso_local global i64 0, align 8
@DMA_CNTL = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@SRBM_INT_CNTL = common dso_local global i64 0, align 8
@INT_MASK = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@GRPH_INT_CONTROL = common dso_local global i64 0, align 8
@DACA_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DACB_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPDx_INT_POLARITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_disable_interrupt_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_CAYMAN, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %13 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %11, i32 0, i32 %14)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %16, i32 1, i32 0)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @cayman_cp_int_cntl_setup(%struct.radeon_device* %18, i32 2, i32 0)
  %20 = load i64, i64* @CAYMAN_DMA1_CNTL, align 8
  %21 = call i32 @RREG32(i64 %20)
  %22 = load i32, i32* @TRAP_ENABLE, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %4, align 4
  %25 = load i64, i64* @CAYMAN_DMA1_CNTL, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @WREG32(i64 %25, i32 %26)
  br label %34

28:                                               ; preds = %1
  %29 = load i64, i64* @CP_INT_CNTL, align 8
  %30 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %31 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @WREG32(i64 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %10
  %35 = load i64, i64* @DMA_CNTL, align 8
  %36 = call i32 @RREG32(i64 %35)
  %37 = load i32, i32* @TRAP_ENABLE, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %4, align 4
  %40 = load i64, i64* @DMA_CNTL, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @WREG32(i64 %40, i32 %41)
  %43 = load i64, i64* @GRBM_INT_CNTL, align 8
  %44 = call i32 @WREG32(i64 %43, i32 0)
  %45 = load i64, i64* @SRBM_INT_CNTL, align 8
  %46 = call i32 @WREG32(i64 %45, i32 0)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %62, %34
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i64, i64* @INT_MASK, align 8
  %55 = load i64*, i64** @crtc_offsets, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %54, %59
  %61 = call i32 @WREG32(i64 %60, i32 0)
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %47

65:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %81, %65
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %74 = load i64*, i64** @crtc_offsets, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = call i32 @WREG32(i64 %79, i32 0)
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %66

84:                                               ; preds = %66
  %85 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %86 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* @DACA_AUTODETECT_INT_CONTROL, align 8
  %90 = call i32 @WREG32(i64 %89, i32 0)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i64, i64* @DACB_AUTODETECT_INT_CONTROL, align 8
  %93 = call i32 @WREG32(i64 %92, i32 0)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %102, %91
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 6
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @DC_HPDx_INT_CONTROL(i32 %98)
  %100 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %101 = call i32 @WREG32_AND(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %94

105:                                              ; preds = %94
  ret void
}

declare dso_local i32 @cayman_cp_int_cntl_setup(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_AND(i32, i32) #1

declare dso_local i32 @DC_HPDx_INT_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
