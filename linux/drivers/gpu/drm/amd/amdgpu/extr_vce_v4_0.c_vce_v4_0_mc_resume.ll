; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@VCE = common dso_local global i32 0, align 4
@mmVCE_CLOCK_GATING_A = common dso_local global i32 0, align 4
@mmVCE_UENC_CLOCK_GATING = common dso_local global i32 0, align 4
@mmVCE_UENC_REG_CLOCK_GATING = common dso_local global i32 0, align 4
@mmVCE_CLOCK_GATING_B = common dso_local global i32 0, align 4
@mmVCE_LMI_CTRL = common dso_local global i32 0, align 4
@mmVCE_LMI_CACHE_CTRL = common dso_local global i32 0, align 4
@mmVCE_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@mmVCE_LMI_SWAP_CNTL1 = common dso_local global i32 0, align 4
@mmVCE_LMI_VM_CTRL = common dso_local global i32 0, align 4
@AMDGPU_VCE_FIRMWARE_OFFSET = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_VCE = common dso_local global i64 0, align 8
@mmVCE_LMI_VCPU_CACHE_40BIT_BAR0 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_64BIT_BAR0 = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@VCE_V4_0_FW_SIZE = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_40BIT_BAR1 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_64BIT_BAR1 = common dso_local global i32 0, align 4
@VCE_V4_0_STACK_SIZE = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_40BIT_BAR2 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_64BIT_BAR2 = common dso_local global i32 0, align 4
@VCE_V4_0_DATA_SIZE = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@mmVCE_LMI_CTRL2 = common dso_local global i32 0, align 4
@mmVCE_SYS_INT_EN = common dso_local global i32 0, align 4
@VCE_SYS_INT_EN__VCE_SYS_INT_TRAP_INTERRUPT_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vce_v4_0_mc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vce_v4_0_mc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load i32, i32* @VCE, align 4
  %7 = load i32, i32* @mmVCE_CLOCK_GATING_A, align 4
  %8 = call i32 @SOC15_REG_OFFSET(i32 %6, i32 0, i32 %7)
  %9 = call i32 @WREG32_P(i32 %8, i32 0, i32 -65537)
  %10 = load i32, i32* @VCE, align 4
  %11 = load i32, i32* @mmVCE_UENC_CLOCK_GATING, align 4
  %12 = call i32 @SOC15_REG_OFFSET(i32 %10, i32 0, i32 %11)
  %13 = call i32 @WREG32_P(i32 %12, i32 2093056, i32 6295551)
  %14 = load i32, i32* @VCE, align 4
  %15 = load i32, i32* @mmVCE_UENC_REG_CLOCK_GATING, align 4
  %16 = call i32 @SOC15_REG_OFFSET(i32 %14, i32 0, i32 %15)
  %17 = call i32 @WREG32_P(i32 %16, i32 63, i32 -64)
  %18 = load i32, i32* @VCE, align 4
  %19 = load i32, i32* @mmVCE_CLOCK_GATING_B, align 4
  %20 = call i32 @SOC15_REG_OFFSET(i32 %18, i32 0, i32 %19)
  %21 = call i32 @WREG32(i32 %20, i32 511)
  %22 = load i32, i32* @VCE, align 4
  %23 = load i32, i32* @mmVCE_LMI_CTRL, align 4
  %24 = call i32 @SOC15_REG_OFFSET(i32 %22, i32 0, i32 %23)
  %25 = call i32 @WREG32(i32 %24, i32 3768320)
  %26 = load i32, i32* @VCE, align 4
  %27 = load i32, i32* @mmVCE_LMI_CACHE_CTRL, align 4
  %28 = call i32 @SOC15_REG_OFFSET(i32 %26, i32 0, i32 %27)
  %29 = call i32 @WREG32_P(i32 %28, i32 0, i32 -2)
  %30 = load i32, i32* @VCE, align 4
  %31 = load i32, i32* @mmVCE_LMI_SWAP_CNTL, align 4
  %32 = call i32 @SOC15_REG_OFFSET(i32 %30, i32 0, i32 %31)
  %33 = call i32 @WREG32(i32 %32, i32 0)
  %34 = load i32, i32* @VCE, align 4
  %35 = load i32, i32* @mmVCE_LMI_SWAP_CNTL1, align 4
  %36 = call i32 @SOC15_REG_OFFSET(i32 %34, i32 0, i32 %35)
  %37 = call i32 @WREG32(i32 %36, i32 0)
  %38 = load i32, i32* @VCE, align 4
  %39 = load i32, i32* @mmVCE_LMI_VM_CTRL, align 4
  %40 = call i32 @SOC15_REG_OFFSET(i32 %38, i32 0, i32 %39)
  %41 = call i32 @WREG32(i32 %40, i32 0)
  %42 = load i32, i32* @AMDGPU_VCE_FIRMWARE_OFFSET, align 4
  store i32 %42, i32* %3, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %1
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* @AMDGPU_UCODE_ID_VCE, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 %58, 32
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* @AMDGPU_UCODE_ID_VCE, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %59, %67
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @VCE, align 4
  %70 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_40BIT_BAR0, align 4
  %71 = call i32 @SOC15_REG_OFFSET(i32 %69, i32 0, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 8
  %74 = call i32 @WREG32(i32 %71, i32 %73)
  %75 = load i32, i32* @VCE, align 4
  %76 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_64BIT_BAR0, align 4
  %77 = call i32 @SOC15_REG_OFFSET(i32 %75, i32 0, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 40
  %80 = and i32 %79, 255
  %81 = call i32 @WREG32(i32 %77, i32 %80)
  %82 = load i32, i32* @VCE, align 4
  %83 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET0, align 4
  %84 = call i32 @SOC15_REG_OFFSET(i32 %82, i32 0, i32 %83)
  %85 = call i32 @WREG32(i32 %84, i32 0)
  br label %112

86:                                               ; preds = %1
  %87 = load i32, i32* @VCE, align 4
  %88 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_40BIT_BAR0, align 4
  %89 = call i32 @SOC15_REG_OFFSET(i32 %87, i32 0, i32 %88)
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %93, 8
  %95 = call i32 @WREG32(i32 %89, i32 %94)
  %96 = load i32, i32* @VCE, align 4
  %97 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_64BIT_BAR0, align 4
  %98 = call i32 @SOC15_REG_OFFSET(i32 %96, i32 0, i32 %97)
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = ashr i32 %102, 40
  %104 = and i32 %103, 255
  %105 = call i32 @WREG32(i32 %98, i32 %104)
  %106 = load i32, i32* @VCE, align 4
  %107 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET0, align 4
  %108 = call i32 @SOC15_REG_OFFSET(i32 %106, i32 0, i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, -251658241
  %111 = call i32 @WREG32(i32 %108, i32 %110)
  br label %112

112:                                              ; preds = %86, %49
  %113 = load i32, i32* @VCE_V4_0_FW_SIZE, align 4
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* @VCE, align 4
  %115 = load i32, i32* @mmVCE_VCPU_CACHE_SIZE0, align 4
  %116 = call i32 @SOC15_REG_OFFSET(i32 %114, i32 0, i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @WREG32(i32 %116, i32 %117)
  %119 = load i32, i32* @VCE, align 4
  %120 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_40BIT_BAR1, align 4
  %121 = call i32 @SOC15_REG_OFFSET(i32 %119, i32 0, i32 %120)
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = ashr i32 %125, 8
  %127 = call i32 @WREG32(i32 %121, i32 %126)
  %128 = load i32, i32* @VCE, align 4
  %129 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_64BIT_BAR1, align 4
  %130 = call i32 @SOC15_REG_OFFSET(i32 %128, i32 0, i32 %129)
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = ashr i32 %134, 40
  %136 = and i32 %135, 255
  %137 = call i32 @WREG32(i32 %130, i32 %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %112
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %145, %146
  br label %149

148:                                              ; preds = %112
  br label %149

149:                                              ; preds = %148, %144
  %150 = phi i32 [ %147, %144 ], [ 0, %148 ]
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* @VCE_V4_0_STACK_SIZE, align 4
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* @VCE, align 4
  %153 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET1, align 4
  %154 = call i32 @SOC15_REG_OFFSET(i32 %152, i32 0, i32 %153)
  %155 = load i32, i32* %3, align 4
  %156 = and i32 %155, -251658241
  %157 = or i32 %156, 16777216
  %158 = call i32 @WREG32(i32 %154, i32 %157)
  %159 = load i32, i32* @VCE, align 4
  %160 = load i32, i32* @mmVCE_VCPU_CACHE_SIZE1, align 4
  %161 = call i32 @SOC15_REG_OFFSET(i32 %159, i32 0, i32 %160)
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @WREG32(i32 %161, i32 %162)
  %164 = load i32, i32* @VCE, align 4
  %165 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_40BIT_BAR2, align 4
  %166 = call i32 @SOC15_REG_OFFSET(i32 %164, i32 0, i32 %165)
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %168 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = ashr i32 %170, 8
  %172 = call i32 @WREG32(i32 %166, i32 %171)
  %173 = load i32, i32* @VCE, align 4
  %174 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_64BIT_BAR2, align 4
  %175 = call i32 @SOC15_REG_OFFSET(i32 %173, i32 0, i32 %174)
  %176 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %177 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = ashr i32 %179, 40
  %181 = and i32 %180, 255
  %182 = call i32 @WREG32(i32 %175, i32 %181)
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %3, align 4
  %186 = load i32, i32* @VCE_V4_0_DATA_SIZE, align 4
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* @VCE, align 4
  %188 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET2, align 4
  %189 = call i32 @SOC15_REG_OFFSET(i32 %187, i32 0, i32 %188)
  %190 = load i32, i32* %3, align 4
  %191 = and i32 %190, -251658241
  %192 = or i32 %191, 33554432
  %193 = call i32 @WREG32(i32 %189, i32 %192)
  %194 = load i32, i32* @VCE, align 4
  %195 = load i32, i32* @mmVCE_VCPU_CACHE_SIZE2, align 4
  %196 = call i32 @SOC15_REG_OFFSET(i32 %194, i32 0, i32 %195)
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @WREG32(i32 %196, i32 %197)
  %199 = load i32, i32* @VCE, align 4
  %200 = load i32, i32* @mmVCE_LMI_CTRL2, align 4
  %201 = call i32 @SOC15_REG_OFFSET(i32 %199, i32 0, i32 %200)
  %202 = call i32 @WREG32_P(i32 %201, i32 0, i32 -257)
  %203 = load i32, i32* @VCE, align 4
  %204 = load i32, i32* @mmVCE_SYS_INT_EN, align 4
  %205 = call i32 @SOC15_REG_OFFSET(i32 %203, i32 0, i32 %204)
  %206 = load i32, i32* @VCE_SYS_INT_EN__VCE_SYS_INT_TRAP_INTERRUPT_EN_MASK, align 4
  %207 = load i32, i32* @VCE_SYS_INT_EN__VCE_SYS_INT_TRAP_INTERRUPT_EN_MASK, align 4
  %208 = xor i32 %207, -1
  %209 = call i32 @WREG32_P(i32 %205, i32 %206, i32 %208)
  ret void
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
