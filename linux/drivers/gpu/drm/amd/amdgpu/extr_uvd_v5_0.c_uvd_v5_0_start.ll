; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i8*, i8*, i32 }

@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@mmUVD_MASTINT_EN = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__RBC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__CSM_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__CXW_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__TAP_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@mmSRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET__SOFT_RESET_UVD_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL = common dso_local global i32 0, align 4
@mmUVD_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@mmUVD_MP_SWAP_CNTL = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXA0 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXA1 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXB0 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXB1 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_ALU = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUX = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"UVD not responding, trying to reset the VCPU!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"UVD not responding, giving up!!!\0A\00", align 1
@UVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@RB_BUFSZ = common dso_local global i32 0, align 4
@RB_BLKSZ = common dso_local global i32 0, align 4
@RB_NO_FETCH = common dso_local global i32 0, align 4
@RB_WPTR_POLL_EN = common dso_local global i32 0, align 4
@RB_NO_UPDATE = common dso_local global i32 0, align 4
@RB_RPTR_WR_EN = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR_CNTL = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_RPTR_ADDR = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_RB_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@UVD_RBC_RB_CNTL__RB_NO_FETCH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @uvd_v5_0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v5_0_start(%struct.amdgpu_device* %0) #0 {
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
  %18 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %19 = call i32 @WREG32_P(i32 %18, i32 0, i32 -5)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @uvd_v5_0_mc_resume(%struct.amdgpu_device* %20)
  %22 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %23 = call i32 @WREG32_P(i32 %22, i32 0, i32 -3)
  %24 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %25 = call i32 @WREG32_P(i32 %24, i32 256, i32 -257)
  %26 = call i32 @mdelay(i32 1)
  %27 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %28 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %29 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UVD_SOFT_RESET__RBC_SOFT_RESET_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UVD_SOFT_RESET__CSM_SOFT_RESET_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @UVD_SOFT_RESET__CXW_SOFT_RESET_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UVD_SOFT_RESET__TAP_SOFT_RESET_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @WREG32(i32 %27, i32 %42)
  %44 = call i32 @mdelay(i32 5)
  %45 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %46 = load i32, i32* @SRBM_SOFT_RESET__SOFT_RESET_UVD_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = call i32 @WREG32_P(i32 %45, i32 0, i32 %47)
  %49 = call i32 @mdelay(i32 5)
  %50 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %51 = call i32 @WREG32(i32 %50, i32 3154752)
  %52 = load i32, i32* @mmUVD_LMI_SWAP_CNTL, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @WREG32(i32 %52, i32 %53)
  %55 = load i32, i32* @mmUVD_MP_SWAP_CNTL, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @WREG32(i32 %55, i32 %56)
  %58 = load i32, i32* @mmUVD_MPC_SET_MUXA0, align 4
  %59 = call i32 @WREG32(i32 %58, i32 67903552)
  %60 = load i32, i32* @mmUVD_MPC_SET_MUXA1, align 4
  %61 = call i32 @WREG32(i32 %60, i32 0)
  %62 = load i32, i32* @mmUVD_MPC_SET_MUXB0, align 4
  %63 = call i32 @WREG32(i32 %62, i32 67903552)
  %64 = load i32, i32* @mmUVD_MPC_SET_MUXB1, align 4
  %65 = call i32 @WREG32(i32 %64, i32 0)
  %66 = load i32, i32* @mmUVD_MPC_SET_ALU, align 4
  %67 = call i32 @WREG32(i32 %66, i32 0)
  %68 = load i32, i32* @mmUVD_MPC_SET_MUX, align 4
  %69 = call i32 @WREG32(i32 %68, i32 136)
  %70 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %71 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %72 = call i32 @WREG32(i32 %70, i32 %71)
  %73 = call i32 @mdelay(i32 5)
  %74 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %75 = call i32 @WREG32(i32 %74, i32 512)
  %76 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %77 = call i32 @WREG32_P(i32 %76, i32 0, i32 -257)
  %78 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %79 = call i32 @WREG32(i32 %78, i32 0)
  %80 = call i32 @mdelay(i32 10)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %119, %1
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 10
  br i1 %83, label %84, label %122

84:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %98, %84
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 100
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32, i32* @mmUVD_STATUS, align 4
  %90 = call i8* @RREG32(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 2
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %101

96:                                               ; preds = %88
  %97 = call i32 @mdelay(i32 10)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %85

101:                                              ; preds = %95, %85
  store i32 0, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, 2
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %122

106:                                              ; preds = %101
  %107 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %109 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %110 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = call i32 @WREG32_P(i32 %108, i32 %109, i32 %111)
  %113 = call i32 @mdelay(i32 10)
  %114 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %115 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %116 = xor i32 %115, -1
  %117 = call i32 @WREG32_P(i32 %114, i32 0, i32 %116)
  %118 = call i32 @mdelay(i32 10)
  store i32 -1, i32* %11, align 4
  br label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %81

122:                                              ; preds = %105, %81
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %2, align 4
  br label %202

128:                                              ; preds = %122
  %129 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %130 = call i32 @WREG32_P(i32 %129, i32 6, i32 -7)
  %131 = load i32, i32* @mmUVD_STATUS, align 4
  %132 = call i32 @WREG32_P(i32 %131, i32 0, i32 -5)
  %133 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %134 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @order_base_2(i32 %135)
  store i32 %136, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %139 = load i32, i32* @RB_BUFSZ, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @REG_SET_FIELD(i32 %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %144 = load i32, i32* @RB_BLKSZ, align 4
  %145 = call i32 @REG_SET_FIELD(i32 %142, i32 %143, i32 %144, i32 1)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %148 = load i32, i32* @RB_NO_FETCH, align 4
  %149 = call i32 @REG_SET_FIELD(i32 %146, i32 %147, i32 %148, i32 1)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %152 = load i32, i32* @RB_WPTR_POLL_EN, align 4
  %153 = call i32 @REG_SET_FIELD(i32 %150, i32 %151, i32 %152, i32 0)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %156 = load i32, i32* @RB_NO_UPDATE, align 4
  %157 = call i32 @REG_SET_FIELD(i32 %154, i32 %155, i32 %156, i32 1)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %160 = load i32, i32* @RB_RPTR_WR_EN, align 4
  %161 = call i32 @REG_SET_FIELD(i32 %158, i32 %159, i32 %160, i32 1)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @WREG32(i32 %162, i32 %163)
  %165 = load i32, i32* @mmUVD_RBC_RB_WPTR_CNTL, align 4
  %166 = call i32 @WREG32(i32 %165, i32 0)
  %167 = load i32, i32* @mmUVD_RBC_RB_RPTR_ADDR, align 4
  %168 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %169 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @upper_32_bits(i8* %170)
  %172 = ashr i32 %171, 2
  %173 = call i32 @WREG32(i32 %167, i32 %172)
  %174 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_LOW, align 4
  %175 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %176 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @lower_32_bits(i8* %177)
  %179 = call i32 @WREG32(i32 %174, i32 %178)
  %180 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH, align 4
  %181 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %182 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @upper_32_bits(i8* %183)
  %185 = call i32 @WREG32(i32 %180, i32 %184)
  %186 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %187 = call i32 @WREG32(i32 %186, i32 0)
  %188 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %189 = call i8* @RREG32(i32 %188)
  %190 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %191 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %193 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %194 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @lower_32_bits(i8* %195)
  %197 = call i32 @WREG32(i32 %192, i32 %196)
  %198 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %199 = load i32, i32* @UVD_RBC_RB_CNTL__RB_NO_FETCH_MASK, align 4
  %200 = xor i32 %199, -1
  %201 = call i32 @WREG32_P(i32 %198, i32 0, i32 %200)
  store i32 0, i32* %2, align 4
  br label %202

202:                                              ; preds = %128, %125
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @uvd_v5_0_mc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i8* @RREG32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i8*) #1

declare dso_local i32 @lower_32_bits(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
