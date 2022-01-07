; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32, i32, i32 }

@R600_RING_TYPE_UVD_INDEX = common dso_local global i64 0, align 8
@UVD_CGC_GATE = common dso_local global i32 0, align 4
@UVD_MASTINT_EN = common dso_local global i32 0, align 4
@UVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@UVD_RB_ARB_CTRL = common dso_local global i32 0, align 4
@UVD_SOFT_RESET = common dso_local global i32 0, align 4
@LMI_SOFT_RESET = common dso_local global i32 0, align 4
@VCPU_SOFT_RESET = common dso_local global i32 0, align 4
@LBSI_SOFT_RESET = common dso_local global i32 0, align 4
@RBC_SOFT_RESET = common dso_local global i32 0, align 4
@CSM_SOFT_RESET = common dso_local global i32 0, align 4
@CXW_SOFT_RESET = common dso_local global i32 0, align 4
@TAP_SOFT_RESET = common dso_local global i32 0, align 4
@LMI_UMC_SOFT_RESET = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_UVD = common dso_local global i32 0, align 4
@UVD_LMI_CTRL = common dso_local global i32 0, align 4
@UVD_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@UVD_MP_SWAP_CNTL = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXA0 = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXA1 = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXB0 = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXB1 = common dso_local global i32 0, align 4
@UVD_MPC_SET_ALU = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUX = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL = common dso_local global i32 0, align 4
@UVD_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"UVD not responding, trying to reset the VCPU!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"UVD not responding, giving up!!!\0A\00", align 1
@UVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@UVD_RBC_RB_WPTR_CNTL = common dso_local global i32 0, align 4
@UVD_LMI_EXT40_ADDR = common dso_local global i32 0, align 4
@UVD_RBC_RB_RPTR = common dso_local global i32 0, align 4
@UVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@UVD_RBC_RB_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvd_v1_0_start(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_ring*, %struct.radeon_ring** %13, align 8
  %15 = load i64, i64* @R600_RING_TYPE_UVD_INDEX, align 8
  %16 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %14, i64 %15
  store %struct.radeon_ring* %16, %struct.radeon_ring** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @UVD_CGC_GATE, align 4
  %18 = call i32 @WREG32(i32 %17, i32 0)
  %19 = load i32, i32* @UVD_MASTINT_EN, align 4
  %20 = call i32 @WREG32_P(i32 %19, i32 0, i32 -3)
  %21 = load i32, i32* @UVD_LMI_CTRL2, align 4
  %22 = call i32 @WREG32_P(i32 %21, i32 256, i32 -257)
  %23 = load i32, i32* @UVD_RB_ARB_CTRL, align 4
  %24 = call i32 @WREG32_P(i32 %23, i32 8, i32 -9)
  %25 = call i32 @mdelay(i32 1)
  %26 = load i32, i32* @UVD_SOFT_RESET, align 4
  %27 = load i32, i32* @LMI_SOFT_RESET, align 4
  %28 = load i32, i32* @VCPU_SOFT_RESET, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @LBSI_SOFT_RESET, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @RBC_SOFT_RESET, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CSM_SOFT_RESET, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CXW_SOFT_RESET, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TAP_SOFT_RESET, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @LMI_UMC_SOFT_RESET, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @WREG32(i32 %26, i32 %41)
  %43 = call i32 @mdelay(i32 5)
  %44 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %45 = load i32, i32* @SOFT_RESET_UVD, align 4
  %46 = xor i32 %45, -1
  %47 = call i32 @WREG32_P(i32 %44, i32 0, i32 %46)
  %48 = call i32 @mdelay(i32 5)
  %49 = load i32, i32* @UVD_LMI_CTRL, align 4
  %50 = call i32 @WREG32(i32 %49, i32 3154752)
  %51 = load i32, i32* @UVD_LMI_SWAP_CNTL, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @WREG32(i32 %51, i32 %52)
  %54 = load i32, i32* @UVD_MP_SWAP_CNTL, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @WREG32(i32 %54, i32 %55)
  %57 = load i32, i32* @UVD_MPC_SET_MUXA0, align 4
  %58 = call i32 @WREG32(i32 %57, i32 67903552)
  %59 = load i32, i32* @UVD_MPC_SET_MUXA1, align 4
  %60 = call i32 @WREG32(i32 %59, i32 0)
  %61 = load i32, i32* @UVD_MPC_SET_MUXB0, align 4
  %62 = call i32 @WREG32(i32 %61, i32 67903552)
  %63 = load i32, i32* @UVD_MPC_SET_MUXB1, align 4
  %64 = call i32 @WREG32(i32 %63, i32 0)
  %65 = load i32, i32* @UVD_MPC_SET_ALU, align 4
  %66 = call i32 @WREG32(i32 %65, i32 0)
  %67 = load i32, i32* @UVD_MPC_SET_MUX, align 4
  %68 = call i32 @WREG32(i32 %67, i32 136)
  %69 = load i32, i32* @UVD_SOFT_RESET, align 4
  %70 = load i32, i32* @VCPU_SOFT_RESET, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
  %72 = call i32 @mdelay(i32 5)
  %73 = load i32, i32* @UVD_VCPU_CNTL, align 4
  %74 = call i32 @WREG32(i32 %73, i32 512)
  %75 = load i32, i32* @UVD_LMI_CTRL2, align 4
  %76 = call i32 @WREG32_P(i32 %75, i32 0, i32 -257)
  %77 = load i32, i32* @UVD_RB_ARB_CTRL, align 4
  %78 = call i32 @WREG32_P(i32 %77, i32 0, i32 -9)
  %79 = load i32, i32* @UVD_SOFT_RESET, align 4
  %80 = call i32 @WREG32(i32 %79, i32 0)
  %81 = call i32 @mdelay(i32 10)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %120, %1
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 10
  br i1 %84, label %85, label %123

85:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %99, %85
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 100
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32, i32* @UVD_STATUS, align 4
  %91 = call i8* @RREG32(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %93, 2
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %102

97:                                               ; preds = %89
  %98 = call i32 @mdelay(i32 10)
  br label %99

99:                                               ; preds = %97
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %86

102:                                              ; preds = %96, %86
  store i32 0, i32* %8, align 4
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, 2
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %123

107:                                              ; preds = %102
  %108 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @UVD_SOFT_RESET, align 4
  %110 = load i32, i32* @VCPU_SOFT_RESET, align 4
  %111 = load i32, i32* @VCPU_SOFT_RESET, align 4
  %112 = xor i32 %111, -1
  %113 = call i32 @WREG32_P(i32 %109, i32 %110, i32 %112)
  %114 = call i32 @mdelay(i32 10)
  %115 = load i32, i32* @UVD_SOFT_RESET, align 4
  %116 = load i32, i32* @VCPU_SOFT_RESET, align 4
  %117 = xor i32 %116, -1
  %118 = call i32 @WREG32_P(i32 %115, i32 0, i32 %117)
  %119 = call i32 @mdelay(i32 10)
  store i32 -1, i32* %8, align 4
  br label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %82

123:                                              ; preds = %106, %82
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %2, align 4
  br label %170

129:                                              ; preds = %123
  %130 = load i32, i32* @UVD_MASTINT_EN, align 4
  %131 = call i32 @WREG32_P(i32 %130, i32 6, i32 -7)
  %132 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %133 = call i32 @WREG32(i32 %132, i32 285278465)
  %134 = load i32, i32* @UVD_RBC_RB_WPTR_CNTL, align 4
  %135 = call i32 @WREG32(i32 %134, i32 0)
  %136 = load i32, i32* @UVD_LMI_EXT40_ADDR, align 4
  %137 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %138 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @upper_32_bits(i32 %139)
  %141 = or i32 %140, 458752
  %142 = or i32 %141, -2147483648
  %143 = call i32 @WREG32(i32 %136, i32 %142)
  %144 = load i32, i32* @UVD_RBC_RB_RPTR, align 4
  %145 = call i32 @WREG32(i32 %144, i32 0)
  %146 = load i32, i32* @UVD_RBC_RB_RPTR, align 4
  %147 = call i8* @RREG32(i32 %146)
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %150 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @UVD_RBC_RB_WPTR, align 4
  %152 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %153 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @WREG32(i32 %151, i32 %154)
  %156 = load i32, i32* @UVD_RBC_RB_BASE, align 4
  %157 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %158 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @WREG32(i32 %156, i32 %159)
  %161 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %162 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @order_base_2(i32 %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = or i32 256, %165
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @WREG32_P(i32 %167, i32 %168, i32 -73504)
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %129, %126
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i8* @RREG32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
