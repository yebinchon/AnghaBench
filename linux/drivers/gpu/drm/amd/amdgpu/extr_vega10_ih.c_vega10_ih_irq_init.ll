; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, i32, %struct.amdgpu_ih_ring }
%struct.amdgpu_ih_ring = type { i32, i64, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { {}* }

@OSSSYS = common dso_local global i32 0, align 4
@mmIH_RB_BASE = common dso_local global i32 0, align 4
@mmIH_RB_BASE_HI = common dso_local global i32 0, align 4
@mmIH_RB_CNTL = common dso_local global i32 0, align 4
@mmIH_CHICKEN = common dso_local global i32 0, align 4
@IH_CHICKEN = common dso_local global i32 0, align 4
@MC_SPACE_GPA_ENABLE = common dso_local global i32 0, align 4
@MC_SPACE_FBPA_ENABLE = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@RPTR_REARM = common dso_local global i32 0, align 4
@PSP_REG_IH_RB_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PSP program IH_RB_CNTL failed!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@AMDGPU_FW_LOAD_DIRECT = common dso_local global i64 0, align 8
@CHIP_RENOIR = common dso_local global i64 0, align 8
@mmIH_RB_WPTR_ADDR_LO = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmIH_RB_WPTR = common dso_local global i32 0, align 4
@mmIH_RB_RPTR = common dso_local global i32 0, align 4
@mmIH_DOORBELL_RPTR = common dso_local global i32 0, align 4
@mmIH_RB_BASE_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_BASE_HI_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_CNTL_RING1 = common dso_local global i32 0, align 4
@WPTR_OVERFLOW_ENABLE = common dso_local global i32 0, align 4
@RB_FULL_DRAIN_ENABLE = common dso_local global i32 0, align 4
@PSP_REG_IH_RB_CNTL_RING1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"program IH_RB_CNTL_RING1 failed!\0A\00", align 1
@mmIH_RB_WPTR_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_RPTR_RING1 = common dso_local global i32 0, align 4
@mmIH_DOORBELL_RPTR_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_BASE_RING2 = common dso_local global i32 0, align 4
@mmIH_RB_BASE_HI_RING2 = common dso_local global i32 0, align 4
@mmIH_RB_CNTL_RING2 = common dso_local global i32 0, align 4
@PSP_REG_IH_RB_CNTL_RING2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"program IH_RB_CNTL_RING2 failed!\0A\00", align 1
@mmIH_RB_WPTR_RING2 = common dso_local global i32 0, align 4
@mmIH_RB_RPTR_RING2 = common dso_local global i32 0, align 4
@mmIH_DOORBELL_RPTR_RING2 = common dso_local global i32 0, align 4
@mmIH_STORM_CLIENT_LIST_CNTL = common dso_local global i32 0, align 4
@IH_STORM_CLIENT_LIST_CNTL = common dso_local global i32 0, align 4
@CLIENT18_IS_STORM_CLIENT = common dso_local global i32 0, align 4
@mmIH_INT_FLOOD_CNTL = common dso_local global i32 0, align 4
@IH_INT_FLOOD_CNTL = common dso_local global i32 0, align 4
@FLOOD_CNTL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vega10_ih_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_ih_irq_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ih_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = call i32 @vega10_ih_disable_interrupts(%struct.amdgpu_device* %9)
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 5
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.amdgpu_device*)**
  %16 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %15, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = call i32 %16(%struct.amdgpu_device* %17)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store %struct.amdgpu_ih_ring* %21, %struct.amdgpu_ih_ring** %4, align 8
  %22 = load i32, i32* @OSSSYS, align 4
  %23 = load i32, i32* @mmIH_RB_BASE, align 4
  %24 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 8
  %28 = call i32 @WREG32_SOC15(i32 %22, i32 0, i32 %23, i32 %27)
  %29 = load i32, i32* @OSSSYS, align 4
  %30 = load i32, i32* @mmIH_RB_BASE_HI, align 4
  %31 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 40
  %35 = and i32 %34, 255
  %36 = call i32 @WREG32_SOC15(i32 %29, i32 0, i32 %30, i32 %35)
  %37 = load i32, i32* @OSSSYS, align 4
  %38 = load i32, i32* @mmIH_RB_CNTL, align 4
  %39 = call i32 @RREG32_SOC15(i32 %37, i32 0, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @OSSSYS, align 4
  %41 = load i32, i32* @mmIH_CHICKEN, align 4
  %42 = call i32 @RREG32_SOC15(i32 %40, i32 0, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @vega10_ih_rb_cntl(%struct.amdgpu_ih_ring* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @IH_CHICKEN, align 4
  %55 = load i32, i32* @MC_SPACE_GPA_ENABLE, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55, i32 1)
  store i32 %56, i32* %6, align 4
  br label %62

57:                                               ; preds = %1
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @IH_CHICKEN, align 4
  %60 = load i32, i32* @MC_SPACE_FBPA_ENABLE, align 4
  %61 = call i32 @REG_SET_FIELD(i32 %58, i32 %59, i32 %60, i32 1)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @IH_RB_CNTL, align 4
  %65 = load i32, i32* @RPTR_REARM, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @REG_SET_FIELD(i32 %63, i32 %64, i32 %65, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %62
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 2
  %81 = load i32, i32* @PSP_REG_IH_RB_CNTL, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @psp_reg_program(i32* %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %307

89:                                               ; preds = %78
  br label %95

90:                                               ; preds = %62
  %91 = load i32, i32* @OSSSYS, align 4
  %92 = load i32, i32* @mmIH_RB_CNTL, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @WREG32_SOC15(i32 %91, i32 0, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %89
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CHIP_ARCTURUS, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AMDGPU_FW_LOAD_DIRECT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %101, %95
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CHIP_RENOIR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108, %101
  %115 = load i32, i32* @OSSSYS, align 4
  %116 = load i32, i32* @mmIH_CHICKEN, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @WREG32_SOC15(i32 %115, i32 0, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %108
  %120 = load i32, i32* @OSSSYS, align 4
  %121 = load i32, i32* @mmIH_RB_WPTR_ADDR_LO, align 4
  %122 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %123 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @lower_32_bits(i32 %124)
  %126 = call i32 @WREG32_SOC15(i32 %120, i32 0, i32 %121, i32 %125)
  %127 = load i32, i32* @OSSSYS, align 4
  %128 = load i32, i32* @mmIH_RB_WPTR_ADDR_HI, align 4
  %129 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %130 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @upper_32_bits(i32 %131)
  %133 = and i32 %132, 65535
  %134 = call i32 @WREG32_SOC15(i32 %127, i32 0, i32 %128, i32 %133)
  %135 = load i32, i32* @OSSSYS, align 4
  %136 = load i32, i32* @mmIH_RB_WPTR, align 4
  %137 = call i32 @WREG32_SOC15(i32 %135, i32 0, i32 %136, i32 0)
  %138 = load i32, i32* @OSSSYS, align 4
  %139 = load i32, i32* @mmIH_RB_RPTR, align 4
  %140 = call i32 @WREG32_SOC15(i32 %138, i32 0, i32 %139, i32 0)
  %141 = load i32, i32* @OSSSYS, align 4
  %142 = load i32, i32* @mmIH_DOORBELL_RPTR, align 4
  %143 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %144 = call i32 @vega10_ih_doorbell_rptr(%struct.amdgpu_ih_ring* %143)
  %145 = call i32 @WREG32_SOC15(i32 %141, i32 0, i32 %142, i32 %144)
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  store %struct.amdgpu_ih_ring* %148, %struct.amdgpu_ih_ring** %4, align 8
  %149 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %150 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %215

153:                                              ; preds = %119
  %154 = load i32, i32* @OSSSYS, align 4
  %155 = load i32, i32* @mmIH_RB_BASE_RING1, align 4
  %156 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %157 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = ashr i32 %158, 8
  %160 = call i32 @WREG32_SOC15(i32 %154, i32 0, i32 %155, i32 %159)
  %161 = load i32, i32* @OSSSYS, align 4
  %162 = load i32, i32* @mmIH_RB_BASE_HI_RING1, align 4
  %163 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %164 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = ashr i32 %165, 40
  %167 = and i32 %166, 255
  %168 = call i32 @WREG32_SOC15(i32 %161, i32 0, i32 %162, i32 %167)
  %169 = load i32, i32* @OSSSYS, align 4
  %170 = load i32, i32* @mmIH_RB_CNTL_RING1, align 4
  %171 = call i32 @RREG32_SOC15(i32 %169, i32 0, i32 %170)
  store i32 %171, i32* %5, align 4
  %172 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @vega10_ih_rb_cntl(%struct.amdgpu_ih_ring* %172, i32 %173)
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @IH_RB_CNTL, align 4
  %177 = load i32, i32* @WPTR_OVERFLOW_ENABLE, align 4
  %178 = call i32 @REG_SET_FIELD(i32 %175, i32 %176, i32 %177, i32 0)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @IH_RB_CNTL, align 4
  %181 = load i32, i32* @RB_FULL_DRAIN_ENABLE, align 4
  %182 = call i32 @REG_SET_FIELD(i32 %179, i32 %180, i32 %181, i32 1)
  store i32 %182, i32* %5, align 4
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %184 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %153
  %187 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %188 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %187, i32 0, i32 2
  %189 = load i32, i32* @PSP_REG_IH_RB_CNTL_RING1, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i64 @psp_reg_program(i32* %188, i32 %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %195 = load i32, i32* @ETIMEDOUT, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %2, align 4
  br label %307

197:                                              ; preds = %186
  br label %203

198:                                              ; preds = %153
  %199 = load i32, i32* @OSSSYS, align 4
  %200 = load i32, i32* @mmIH_RB_CNTL_RING1, align 4
  %201 = load i32, i32* %5, align 4
  %202 = call i32 @WREG32_SOC15(i32 %199, i32 0, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %197
  %204 = load i32, i32* @OSSSYS, align 4
  %205 = load i32, i32* @mmIH_RB_WPTR_RING1, align 4
  %206 = call i32 @WREG32_SOC15(i32 %204, i32 0, i32 %205, i32 0)
  %207 = load i32, i32* @OSSSYS, align 4
  %208 = load i32, i32* @mmIH_RB_RPTR_RING1, align 4
  %209 = call i32 @WREG32_SOC15(i32 %207, i32 0, i32 %208, i32 0)
  %210 = load i32, i32* @OSSSYS, align 4
  %211 = load i32, i32* @mmIH_DOORBELL_RPTR_RING1, align 4
  %212 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %213 = call i32 @vega10_ih_doorbell_rptr(%struct.amdgpu_ih_ring* %212)
  %214 = call i32 @WREG32_SOC15(i32 %210, i32 0, i32 %211, i32 %213)
  br label %215

215:                                              ; preds = %203, %119
  %216 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %217 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  store %struct.amdgpu_ih_ring* %218, %struct.amdgpu_ih_ring** %4, align 8
  %219 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %220 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %277

223:                                              ; preds = %215
  %224 = load i32, i32* @OSSSYS, align 4
  %225 = load i32, i32* @mmIH_RB_BASE_RING2, align 4
  %226 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %227 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = ashr i32 %228, 8
  %230 = call i32 @WREG32_SOC15(i32 %224, i32 0, i32 %225, i32 %229)
  %231 = load i32, i32* @OSSSYS, align 4
  %232 = load i32, i32* @mmIH_RB_BASE_HI_RING2, align 4
  %233 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %234 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = ashr i32 %235, 40
  %237 = and i32 %236, 255
  %238 = call i32 @WREG32_SOC15(i32 %231, i32 0, i32 %232, i32 %237)
  %239 = load i32, i32* @OSSSYS, align 4
  %240 = load i32, i32* @mmIH_RB_CNTL_RING2, align 4
  %241 = call i32 @RREG32_SOC15(i32 %239, i32 0, i32 %240)
  store i32 %241, i32* %5, align 4
  %242 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %243 = load i32, i32* %5, align 4
  %244 = call i32 @vega10_ih_rb_cntl(%struct.amdgpu_ih_ring* %242, i32 %243)
  store i32 %244, i32* %5, align 4
  %245 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %246 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %223
  %249 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %250 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %249, i32 0, i32 2
  %251 = load i32, i32* @PSP_REG_IH_RB_CNTL_RING2, align 4
  %252 = load i32, i32* %5, align 4
  %253 = call i64 @psp_reg_program(i32* %250, i32 %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %248
  %256 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %257 = load i32, i32* @ETIMEDOUT, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %2, align 4
  br label %307

259:                                              ; preds = %248
  br label %265

260:                                              ; preds = %223
  %261 = load i32, i32* @OSSSYS, align 4
  %262 = load i32, i32* @mmIH_RB_CNTL_RING2, align 4
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @WREG32_SOC15(i32 %261, i32 0, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %260, %259
  %266 = load i32, i32* @OSSSYS, align 4
  %267 = load i32, i32* @mmIH_RB_WPTR_RING2, align 4
  %268 = call i32 @WREG32_SOC15(i32 %266, i32 0, i32 %267, i32 0)
  %269 = load i32, i32* @OSSSYS, align 4
  %270 = load i32, i32* @mmIH_RB_RPTR_RING2, align 4
  %271 = call i32 @WREG32_SOC15(i32 %269, i32 0, i32 %270, i32 0)
  %272 = load i32, i32* @OSSSYS, align 4
  %273 = load i32, i32* @mmIH_DOORBELL_RPTR_RING2, align 4
  %274 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %275 = call i32 @vega10_ih_doorbell_rptr(%struct.amdgpu_ih_ring* %274)
  %276 = call i32 @WREG32_SOC15(i32 %272, i32 0, i32 %273, i32 %275)
  br label %277

277:                                              ; preds = %265, %215
  %278 = load i32, i32* @OSSSYS, align 4
  %279 = load i32, i32* @mmIH_STORM_CLIENT_LIST_CNTL, align 4
  %280 = call i32 @RREG32_SOC15(i32 %278, i32 0, i32 %279)
  store i32 %280, i32* %8, align 4
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* @IH_STORM_CLIENT_LIST_CNTL, align 4
  %283 = load i32, i32* @CLIENT18_IS_STORM_CLIENT, align 4
  %284 = call i32 @REG_SET_FIELD(i32 %281, i32 %282, i32 %283, i32 1)
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* @OSSSYS, align 4
  %286 = load i32, i32* @mmIH_STORM_CLIENT_LIST_CNTL, align 4
  %287 = load i32, i32* %8, align 4
  %288 = call i32 @WREG32_SOC15(i32 %285, i32 0, i32 %286, i32 %287)
  %289 = load i32, i32* @OSSSYS, align 4
  %290 = load i32, i32* @mmIH_INT_FLOOD_CNTL, align 4
  %291 = call i32 @RREG32_SOC15(i32 %289, i32 0, i32 %290)
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @IH_INT_FLOOD_CNTL, align 4
  %294 = load i32, i32* @FLOOD_CNTL_ENABLE, align 4
  %295 = call i32 @REG_SET_FIELD(i32 %292, i32 %293, i32 %294, i32 1)
  store i32 %295, i32* %8, align 4
  %296 = load i32, i32* @OSSSYS, align 4
  %297 = load i32, i32* @mmIH_INT_FLOOD_CNTL, align 4
  %298 = load i32, i32* %8, align 4
  %299 = call i32 @WREG32_SOC15(i32 %296, i32 0, i32 %297, i32 %298)
  %300 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %301 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @pci_set_master(i32 %302)
  %304 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %305 = call i32 @vega10_ih_enable_interrupts(%struct.amdgpu_device* %304)
  %306 = load i32, i32* %7, align 4
  store i32 %306, i32* %2, align 4
  br label %307

307:                                              ; preds = %277, %255, %193, %85
  %308 = load i32, i32* %2, align 4
  ret i32 %308
}

declare dso_local i32 @vega10_ih_disable_interrupts(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @vega10_ih_rb_cntl(%struct.amdgpu_ih_ring*, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @psp_reg_program(i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @vega10_ih_doorbell_rptr(%struct.amdgpu_ih_ring*) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @vega10_ih_enable_interrupts(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
