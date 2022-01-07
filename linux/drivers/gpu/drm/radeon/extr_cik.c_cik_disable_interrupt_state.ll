; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_disable_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_disable_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CP_INT_CNTL_RING0 = common dso_local global i64 0, align 8
@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@SDMA0_CNTL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@CP_ME1_PIPE0_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME1_PIPE1_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME1_PIPE2_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME1_PIPE3_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME2_PIPE0_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME2_PIPE1_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME2_PIPE2_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME2_PIPE3_INT_CNTL = common dso_local global i64 0, align 8
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@SRBM_INT_CNTL = common dso_local global i64 0, align 8
@LB_INTERRUPT_MASK = common dso_local global i64 0, align 8
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@GRPH_INT_CONTROL = common dso_local global i64 0, align 8
@DAC_AUTODETECT_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPDx_INT_POLARITY = common dso_local global i32 0, align 4
@DC_HPD2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD3_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD4_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD5_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD6_INT_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cik_disable_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_disable_interrupt_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %5 = call i32 @RREG32(i64 %4)
  %6 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %7 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @WREG32(i64 %10, i32 %11)
  %13 = load i64, i64* @SDMA0_CNTL, align 8
  %14 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @RREG32(i64 %15)
  %17 = load i32, i32* @TRAP_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load i64, i64* @SDMA0_CNTL, align 8
  %21 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @WREG32(i64 %22, i32 %23)
  %25 = load i64, i64* @SDMA0_CNTL, align 8
  %26 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @RREG32(i64 %27)
  %29 = load i32, i32* @TRAP_ENABLE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %3, align 4
  %32 = load i64, i64* @SDMA0_CNTL, align 8
  %33 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @WREG32(i64 %34, i32 %35)
  %37 = load i64, i64* @CP_ME1_PIPE0_INT_CNTL, align 8
  %38 = call i32 @WREG32(i64 %37, i32 0)
  %39 = load i64, i64* @CP_ME1_PIPE1_INT_CNTL, align 8
  %40 = call i32 @WREG32(i64 %39, i32 0)
  %41 = load i64, i64* @CP_ME1_PIPE2_INT_CNTL, align 8
  %42 = call i32 @WREG32(i64 %41, i32 0)
  %43 = load i64, i64* @CP_ME1_PIPE3_INT_CNTL, align 8
  %44 = call i32 @WREG32(i64 %43, i32 0)
  %45 = load i64, i64* @CP_ME2_PIPE0_INT_CNTL, align 8
  %46 = call i32 @WREG32(i64 %45, i32 0)
  %47 = load i64, i64* @CP_ME2_PIPE1_INT_CNTL, align 8
  %48 = call i32 @WREG32(i64 %47, i32 0)
  %49 = load i64, i64* @CP_ME2_PIPE2_INT_CNTL, align 8
  %50 = call i32 @WREG32(i64 %49, i32 0)
  %51 = load i64, i64* @CP_ME2_PIPE3_INT_CNTL, align 8
  %52 = call i32 @WREG32(i64 %51, i32 0)
  %53 = load i64, i64* @GRBM_INT_CNTL, align 8
  %54 = call i32 @WREG32(i64 %53, i32 0)
  %55 = load i64, i64* @SRBM_INT_CNTL, align 8
  %56 = call i32 @WREG32(i64 %55, i32 0)
  %57 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %58 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @WREG32(i64 %59, i32 0)
  %61 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %62 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @WREG32(i64 %63, i32 0)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 4
  br i1 %68, label %69, label %78

69:                                               ; preds = %1
  %70 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %71 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @WREG32(i64 %72, i32 0)
  %74 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %75 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @WREG32(i64 %76, i32 0)
  br label %78

78:                                               ; preds = %69, %1
  %79 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 6
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %85 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @WREG32(i64 %86, i32 0)
  %88 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %89 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @WREG32(i64 %90, i32 0)
  br label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %95, 2
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %99 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @WREG32(i64 %100, i32 0)
  %102 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %103 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @WREG32(i64 %104, i32 0)
  br label %106

106:                                              ; preds = %97, %92
  %107 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %109, 4
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %113 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @WREG32(i64 %114, i32 0)
  %116 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %117 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @WREG32(i64 %118, i32 0)
  br label %120

120:                                              ; preds = %111, %106
  %121 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sge i32 %123, 6
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %127 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @WREG32(i64 %128, i32 0)
  %130 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %131 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @WREG32(i64 %132, i32 0)
  br label %134

134:                                              ; preds = %125, %120
  %135 = load i64, i64* @DAC_AUTODETECT_INT_CONTROL, align 8
  %136 = call i32 @WREG32(i64 %135, i32 0)
  %137 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %138 = call i32 @RREG32(i64 %137)
  %139 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %140 = and i32 %138, %139
  store i32 %140, i32* %3, align 4
  %141 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @WREG32(i64 %141, i32 %142)
  %144 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %145 = call i32 @RREG32(i64 %144)
  %146 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %147 = and i32 %145, %146
  store i32 %147, i32* %3, align 4
  %148 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @WREG32(i64 %148, i32 %149)
  %151 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %152 = call i32 @RREG32(i64 %151)
  %153 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %3, align 4
  %155 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @WREG32(i64 %155, i32 %156)
  %158 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %159 = call i32 @RREG32(i64 %158)
  %160 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %161 = and i32 %159, %160
  store i32 %161, i32* %3, align 4
  %162 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @WREG32(i64 %162, i32 %163)
  %165 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %166 = call i32 @RREG32(i64 %165)
  %167 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %168 = and i32 %166, %167
  store i32 %168, i32* %3, align 4
  %169 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @WREG32(i64 %169, i32 %170)
  %172 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %173 = call i32 @RREG32(i64 %172)
  %174 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %175 = and i32 %173, %174
  store i32 %175, i32* %3, align 4
  %176 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @WREG32(i64 %176, i32 %177)
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
