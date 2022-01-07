; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i32, i8* }

@mmUVD_STATUS = common dso_local global i32 0, align 4
@mmUVD_CGC_GATE = common dso_local global i32 0, align 4
@mmSRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET__SOFT_RESET_UVD_MASK = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@mmUVD_MASTINT_EN = common dso_local global i32 0, align 4
@mmUVD_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@mmUVD_MP_SWAP_CNTL = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL = common dso_local global i32 0, align 4
@mmUVD_MPC_CNTL = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXA0 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXA1 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXB0 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXB1 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_ALU = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUX = common dso_local global i32 0, align 4
@ixUVD_LMI_CACHE_CTRL = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"UVD not responding, trying to reset the VCPU!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"UVD not responding, giving up!!!\0A\00", align 1
@mmUVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR_CNTL = common dso_local global i32 0, align 4
@mmUVD_LMI_EXT40_ADDR = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @uvd_v4_2_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v4_2_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.amdgpu_ring* %17, %struct.amdgpu_ring** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @mmUVD_STATUS, align 4
  %19 = call i32 @WREG32_P(i32 %18, i32 4, i32 -5)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @uvd_v4_2_set_dcm(%struct.amdgpu_device* %20, i32 1)
  %22 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %23 = call i32 @WREG32(i32 %22, i32 0)
  %24 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %25 = load i32, i32* @SRBM_SOFT_RESET__SOFT_RESET_UVD_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = call i32 @WREG32_P(i32 %24, i32 0, i32 %26)
  %28 = call i32 @mdelay(i32 5)
  %29 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %30 = call i32 @WREG32(i32 %29, i32 512)
  %31 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %32 = call i32 @WREG32_P(i32 %31, i32 0, i32 -3)
  %33 = load i32, i32* @mmUVD_LMI_SWAP_CNTL, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @WREG32(i32 %33, i32 %34)
  %36 = load i32, i32* @mmUVD_MP_SWAP_CNTL, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @WREG32(i32 %36, i32 %37)
  %39 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %40 = call i32 @WREG32(i32 %39, i32 2109704)
  %41 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %42 = call i8* @RREG32(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, 16
  %47 = call i32 @WREG32(i32 %44, i32 %46)
  %48 = load i32, i32* @mmUVD_MPC_SET_MUXA0, align 4
  %49 = call i32 @WREG32(i32 %48, i32 67903552)
  %50 = load i32, i32* @mmUVD_MPC_SET_MUXA1, align 4
  %51 = call i32 @WREG32(i32 %50, i32 0)
  %52 = load i32, i32* @mmUVD_MPC_SET_MUXB0, align 4
  %53 = call i32 @WREG32(i32 %52, i32 67903552)
  %54 = load i32, i32* @mmUVD_MPC_SET_MUXB1, align 4
  %55 = call i32 @WREG32(i32 %54, i32 0)
  %56 = load i32, i32* @mmUVD_MPC_SET_ALU, align 4
  %57 = call i32 @WREG32(i32 %56, i32 0)
  %58 = load i32, i32* @mmUVD_MPC_SET_MUX, align 4
  %59 = call i32 @WREG32(i32 %58, i32 136)
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = call i32 @uvd_v4_2_mc_resume(%struct.amdgpu_device* %60)
  %62 = load i32, i32* @ixUVD_LMI_CACHE_CTRL, align 4
  %63 = call i32 @RREG32_UVD_CTX(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @ixUVD_LMI_CACHE_CTRL, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, -17
  %67 = call i32 @WREG32_UVD_CTX(i32 %64, i32 %66)
  %68 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %69 = call i32 @WREG32_P(i32 %68, i32 0, i32 -257)
  %70 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %71 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = call i32 @WREG32_P(i32 %70, i32 0, i32 %72)
  %74 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %75 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @WREG32_P(i32 %74, i32 0, i32 %76)
  %78 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %79 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = call i32 @WREG32_P(i32 %78, i32 0, i32 %80)
  %82 = call i32 @mdelay(i32 10)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %121, %1
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 10
  br i1 %85, label %86, label %124

86:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %100, %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 100
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load i32, i32* @mmUVD_STATUS, align 4
  %92 = call i8* @RREG32(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %94, 2
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %103

98:                                               ; preds = %90
  %99 = call i32 @mdelay(i32 10)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %87

103:                                              ; preds = %97, %87
  store i32 0, i32* %8, align 4
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, 2
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %124

108:                                              ; preds = %103
  %109 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %111 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %112 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = call i32 @WREG32_P(i32 %110, i32 %111, i32 %113)
  %115 = call i32 @mdelay(i32 10)
  %116 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %117 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %118 = xor i32 %117, -1
  %119 = call i32 @WREG32_P(i32 %116, i32 0, i32 %118)
  %120 = call i32 @mdelay(i32 10)
  store i32 -1, i32* %8, align 4
  br label %121

121:                                              ; preds = %108
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %83

124:                                              ; preds = %107, %83
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %173

130:                                              ; preds = %124
  %131 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %132 = call i32 @WREG32_P(i32 %131, i32 6, i32 -7)
  %133 = load i32, i32* @mmUVD_STATUS, align 4
  %134 = call i32 @WREG32_P(i32 %133, i32 0, i32 -5)
  %135 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %136 = call i32 @WREG32(i32 %135, i32 285278465)
  %137 = load i32, i32* @mmUVD_RBC_RB_WPTR_CNTL, align 4
  %138 = call i32 @WREG32(i32 %137, i32 0)
  %139 = load i32, i32* @mmUVD_LMI_EXT40_ADDR, align 4
  %140 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %141 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @upper_32_bits(i32 %142)
  %144 = or i32 %143, 458752
  %145 = or i32 %144, -2147483648
  %146 = call i32 @WREG32(i32 %139, i32 %145)
  %147 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %148 = call i32 @WREG32(i32 %147, i32 0)
  %149 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %150 = call i8* @RREG32(i32 %149)
  %151 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %152 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %154 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %155 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @lower_32_bits(i8* %156)
  %158 = call i32 @WREG32(i32 %153, i32 %157)
  %159 = load i32, i32* @mmUVD_RBC_RB_BASE, align 4
  %160 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %161 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @WREG32(i32 %159, i32 %162)
  %164 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %165 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @order_base_2(i32 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = or i32 256, %168
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @WREG32_P(i32 %170, i32 %171, i32 -73504)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %130, %127
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @uvd_v4_2_set_dcm(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i8* @RREG32(i32) #1

declare dso_local i32 @uvd_v4_2_mc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_UVD_CTX(i32) #1

declare dso_local i32 @WREG32_UVD_CTX(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
