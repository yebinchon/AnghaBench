; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_jpeg_v2_5_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_jpeg_v2_5_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i8*, i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_JPEG_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@VCN = common dso_local global i32 0, align 4
@mmJPEG_CGC_CTRL = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT = common dso_local global i32 0, align 4
@mmJPEG_CGC_GATE = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG_DEC_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG2_DEC_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JMCIF_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JRBBM_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__JPEG_DEC_MODE_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__JPEG2_DEC_MODE_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__JMCIF_MODE_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__JRBBM_MODE_MASK = common dso_local global i32 0, align 4
@mmJPEG_DEC_GFX8_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmJPEG_DEC_GFX10_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_JMI_CNTL = common dso_local global i32 0, align 4
@UVD_JMI_CNTL__SOFT_RESET_MASK = common dso_local global i32 0, align 4
@mmJPEG_SYS_INT_EN = common dso_local global i32 0, align 4
@JPEG_SYS_INT_EN__DJRBC_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_VMID = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @jpeg_v2_5_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpeg_v2_5_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %184, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %187

13:                                               ; preds = %6
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %184

23:                                               ; preds = %13
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.amdgpu_ring* %31, %struct.amdgpu_ring** %3, align 8
  %32 = load i32, i32* @UVD, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @mmUVD_JPEG_POWER_STATUS, align 4
  %35 = call i32 @SOC15_REG_OFFSET(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @WREG32_P(i32 %35, i32 0, i32 %37)
  %39 = load i32, i32* @VCN, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %42 = call i8* @RREG32_SOC15(i32 %39, i32 %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %53 = shl i32 4, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @VCN, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @WREG32_SOC15(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @VCN, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %64 = call i8* @RREG32_SOC15(i32 %61, i32 %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @JPEG_CGC_GATE__JPEG_DEC_MASK, align 4
  %67 = load i32, i32* @JPEG_CGC_GATE__JPEG2_DEC_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @JPEG_CGC_GATE__JMCIF_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @JPEG_CGC_GATE__JRBBM_MASK, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @VCN, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @WREG32_SOC15(i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @VCN, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %84 = call i8* @RREG32_SOC15(i32 %81, i32 %82, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* @JPEG_CGC_CTRL__JPEG_DEC_MODE_MASK, align 4
  %87 = load i32, i32* @JPEG_CGC_CTRL__JPEG2_DEC_MODE_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @JPEG_CGC_CTRL__JMCIF_MODE_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @JPEG_CGC_CTRL__JRBBM_MODE_MASK, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* @VCN, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @WREG32_SOC15(i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* @UVD, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @mmJPEG_DEC_GFX8_ADDR_CONFIG, align 4
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @WREG32_SOC15(i32 %101, i32 %102, i32 %103, i32 %108)
  %110 = load i32, i32* @UVD, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @mmJPEG_DEC_GFX10_ADDR_CONFIG, align 4
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @WREG32_SOC15(i32 %110, i32 %111, i32 %112, i32 %117)
  %119 = load i32, i32* @UVD, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @mmUVD_JMI_CNTL, align 4
  %122 = call i32 @SOC15_REG_OFFSET(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* @UVD_JMI_CNTL__SOFT_RESET_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = call i32 @WREG32_P(i32 %122, i32 0, i32 %124)
  %126 = load i32, i32* @VCN, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @mmJPEG_SYS_INT_EN, align 4
  %129 = call i32 @SOC15_REG_OFFSET(i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* @JPEG_SYS_INT_EN__DJRBC_MASK, align 4
  %131 = load i32, i32* @JPEG_SYS_INT_EN__DJRBC_MASK, align 4
  %132 = xor i32 %131, -1
  %133 = call i32 @WREG32_P(i32 %129, i32 %130, i32 %132)
  %134 = load i32, i32* @UVD, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @mmUVD_LMI_JRBC_RB_VMID, align 4
  %137 = call i32 @WREG32_SOC15(i32 %134, i32 %135, i32 %136, i32 0)
  %138 = load i32, i32* @UVD, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %141 = call i32 @WREG32_SOC15(i32 %138, i32 %139, i32 %140, i32 3)
  %142 = load i32, i32* @UVD, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW, align 4
  %145 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %146 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @lower_32_bits(i32 %147)
  %149 = call i32 @WREG32_SOC15(i32 %142, i32 %143, i32 %144, i32 %148)
  %150 = load i32, i32* @UVD, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH, align 4
  %153 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %154 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @upper_32_bits(i32 %155)
  %157 = call i32 @WREG32_SOC15(i32 %150, i32 %151, i32 %152, i32 %156)
  %158 = load i32, i32* @UVD, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @mmUVD_JRBC_RB_RPTR, align 4
  %161 = call i32 @WREG32_SOC15(i32 %158, i32 %159, i32 %160, i32 0)
  %162 = load i32, i32* @UVD, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @mmUVD_JRBC_RB_WPTR, align 4
  %165 = call i32 @WREG32_SOC15(i32 %162, i32 %163, i32 %164, i32 0)
  %166 = load i32, i32* @UVD, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %169 = call i32 @WREG32_SOC15(i32 %166, i32 %167, i32 %168, i32 2)
  %170 = load i32, i32* @UVD, align 4
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @mmUVD_JRBC_RB_SIZE, align 4
  %173 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %174 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sdiv i32 %175, 4
  %177 = call i32 @WREG32_SOC15(i32 %170, i32 %171, i32 %172, i32 %176)
  %178 = load i32, i32* @UVD, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @mmUVD_JRBC_RB_WPTR, align 4
  %181 = call i8* @RREG32_SOC15(i32 %178, i32 %179, i32 %180)
  %182 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %183 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %23, %22
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %6

187:                                              ; preds = %6
  ret i32 0
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i8* @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
