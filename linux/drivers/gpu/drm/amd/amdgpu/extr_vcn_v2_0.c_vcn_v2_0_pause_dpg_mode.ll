; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_pause_dpg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_pause_dpg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.dpg_pause_state = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"dpg pause state changed %d -> %d\00", align 1
@UVD = common dso_local global i32 0, align 4
@mmUVD_DPG_PAUSE = common dso_local global i32 0, align 4
@UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK = common dso_local global i32 0, align 4
@VCN_DPG_STATE__PAUSE = common dso_local global i64 0, align 8
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@UVD_DPG_PAUSE__NJ_PAUSE_DPG_REQ_MASK = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_LO = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_HI = common dso_local global i32 0, align 4
@mmUVD_RB_SIZE = common dso_local global i32 0, align 4
@mmUVD_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_LO2 = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_HI2 = common dso_local global i32 0, align 4
@mmUVD_RB_SIZE2 = common dso_local global i32 0, align 4
@mmUVD_RB_RPTR2 = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR2 = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_SCRATCH2 = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.dpg_pause_state*)* @vcn_v2_0_pause_dpg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_0_pause_dpg_mode(%struct.amdgpu_device* %0, %struct.dpg_pause_state* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.dpg_pause_state*, align 8
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.dpg_pause_state* %1, %struct.dpg_pause_state** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %14 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %173

17:                                               ; preds = %2
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %24 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25)
  %27 = load i32, i32* @UVD, align 4
  %28 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %29 = call i32 @RREG32_SOC15(i32 %27, i32 0, i32 %28)
  %30 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %34 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VCN_DPG_STATE__PAUSE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %156

38:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  %39 = load i32, i32* @UVD, align 4
  %40 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %41 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @SOC15_WAIT_ON_RREG(i32 %39, i32 0, i32 %40, i32 1, i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %155, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_REQ_MASK, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @UVD, align 4
  %51 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @WREG32_SOC15(i32 %50, i32 0, i32 %51, i32 %52)
  %54 = load i32, i32* @UVD, align 4
  %55 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %56 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK, align 4
  %57 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @SOC15_WAIT_ON_RREG(i32 %54, i32 0, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %64, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %65, i64 0
  store %struct.amdgpu_ring* %66, %struct.amdgpu_ring** %5, align 8
  %67 = load i32, i32* @UVD, align 4
  %68 = load i32, i32* @mmUVD_RB_BASE_LO, align 4
  %69 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @WREG32_SOC15(i32 %67, i32 0, i32 %68, i32 %71)
  %73 = load i32, i32* @UVD, align 4
  %74 = load i32, i32* @mmUVD_RB_BASE_HI, align 4
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @upper_32_bits(i32 %77)
  %79 = call i32 @WREG32_SOC15(i32 %73, i32 0, i32 %74, i32 %78)
  %80 = load i32, i32* @UVD, align 4
  %81 = load i32, i32* @mmUVD_RB_SIZE, align 4
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %83 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 4
  %86 = call i32 @WREG32_SOC15(i32 %80, i32 0, i32 %81, i32 %85)
  %87 = load i32, i32* @UVD, align 4
  %88 = load i32, i32* @mmUVD_RB_RPTR, align 4
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @lower_32_bits(i32 %91)
  %93 = call i32 @WREG32_SOC15(i32 %87, i32 0, i32 %88, i32 %92)
  %94 = load i32, i32* @UVD, align 4
  %95 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %96 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %97 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @lower_32_bits(i32 %98)
  %100 = call i32 @WREG32_SOC15(i32 %94, i32 0, i32 %95, i32 %99)
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %105, align 8
  %107 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %106, i64 1
  store %struct.amdgpu_ring* %107, %struct.amdgpu_ring** %5, align 8
  %108 = load i32, i32* @UVD, align 4
  %109 = load i32, i32* @mmUVD_RB_BASE_LO2, align 4
  %110 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %111 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @WREG32_SOC15(i32 %108, i32 0, i32 %109, i32 %112)
  %114 = load i32, i32* @UVD, align 4
  %115 = load i32, i32* @mmUVD_RB_BASE_HI2, align 4
  %116 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %117 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @upper_32_bits(i32 %118)
  %120 = call i32 @WREG32_SOC15(i32 %114, i32 0, i32 %115, i32 %119)
  %121 = load i32, i32* @UVD, align 4
  %122 = load i32, i32* @mmUVD_RB_SIZE2, align 4
  %123 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %124 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %125, 4
  %127 = call i32 @WREG32_SOC15(i32 %121, i32 0, i32 %122, i32 %126)
  %128 = load i32, i32* @UVD, align 4
  %129 = load i32, i32* @mmUVD_RB_RPTR2, align 4
  %130 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %131 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @lower_32_bits(i32 %132)
  %134 = call i32 @WREG32_SOC15(i32 %128, i32 0, i32 %129, i32 %133)
  %135 = load i32, i32* @UVD, align 4
  %136 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %137 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %138 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @lower_32_bits(i32 %139)
  %141 = call i32 @WREG32_SOC15(i32 %135, i32 0, i32 %136, i32 %140)
  %142 = load i32, i32* @UVD, align 4
  %143 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %144 = load i32, i32* @UVD, align 4
  %145 = load i32, i32* @mmUVD_SCRATCH2, align 4
  %146 = call i32 @RREG32_SOC15(i32 %144, i32 0, i32 %145)
  %147 = and i32 %146, 2147483647
  %148 = call i32 @WREG32_SOC15(i32 %142, i32 0, i32 %143, i32 %147)
  %149 = load i32, i32* @UVD, align 4
  %150 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %151 = load i32, i32* @UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON, align 4
  %152 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @SOC15_WAIT_ON_RREG(i32 %149, i32 0, i32 %150, i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %46, %38
  br label %165

156:                                              ; preds = %17
  %157 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_REQ_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %6, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* @UVD, align 4
  %162 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @WREG32_SOC15(i32 %161, i32 0, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %155
  %166 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %167 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i64 %168, i64* %172, align 8
  br label %173

173:                                              ; preds = %165, %2
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
