; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__, %struct.radeon_ring*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64*, i32*, i64*, i32*, i32 }
%struct.radeon_ring = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Can't enable IRQ/MSI because no handler is installed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING0 = common dso_local global i64 0, align 8
@CNTX_BUSY_INT_ENABLE = common dso_local global i32 0, align 4
@CNTX_EMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@PRIV_INSTR_INT_ENABLE = common dso_local global i32 0, align 4
@PRIV_REG_INT_ENABLE = common dso_local global i32 0, align 4
@DC_HPD1_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPDx_INT_EN = common dso_local global i32 0, align 4
@DC_HPDx_RX_INT_EN = common dso_local global i32 0, align 4
@DC_HPD2_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD3_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD4_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD5_INT_CONTROL = common dso_local global i64 0, align 8
@DC_HPD6_INT_CONTROL = common dso_local global i64 0, align 8
@SDMA0_CNTL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@TRAP_ENABLE = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@CP_ME1_PIPE0_INT_CNTL = common dso_local global i64 0, align 8
@TIME_STAMP_INT_ENABLE = common dso_local global i32 0, align 4
@CP_ME1_PIPE1_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME1_PIPE2_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME1_PIPE3_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME2_PIPE0_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME2_PIPE1_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME2_PIPE2_INT_CNTL = common dso_local global i64 0, align 8
@CP_ME2_PIPE3_INT_CNTL = common dso_local global i64 0, align 8
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"cik_irq_set: sw int gfx\0A\00", align 1
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int cp1\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"si_irq_set: sw int cp1 invalid pipe %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"si_irq_set: sw int cp1 invalid me %d\0A\00", align 1
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"si_irq_set: sw int cp2\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"si_irq_set: sw int cp2 invalid pipe %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"si_irq_set: sw int cp2 invalid me %d\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"cik_irq_set: sw int dma\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"cik_irq_set: sw int dma1\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"cik_irq_set: vblank 0\0A\00", align 1
@VBLANK_INTERRUPT_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"cik_irq_set: vblank 1\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"cik_irq_set: vblank 2\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"cik_irq_set: vblank 3\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"cik_irq_set: vblank 4\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"cik_irq_set: vblank 5\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"cik_irq_set: hpd 1\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"cik_irq_set: hpd 2\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"cik_irq_set: hpd 3\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"cik_irq_set: hpd 4\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"cik_irq_set: hpd 5\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"cik_irq_set: hpd 6\0A\00", align 1
@GRBM_INT_CNTL = common dso_local global i64 0, align 8
@LB_INTERRUPT_MASK = common dso_local global i64 0, align 8
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@GRPH_INT_CONTROL = common dso_local global i64 0, align 8
@GRPH_PFLIP_INT_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_irq_set(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.radeon_ring*, align 8
  %29 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %25, align 4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %1
  %36 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %734

39:                                               ; preds = %1
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = call i32 @cik_disable_interrupts(%struct.radeon_device* %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = call i32 @cik_disable_interrupt_state(%struct.radeon_device* %48)
  store i32 0, i32* %2, align 4
  br label %734

50:                                               ; preds = %39
  %51 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %52 = call i32 @RREG32(i64 %51)
  %53 = load i32, i32* @CNTX_BUSY_INT_ENABLE, align 4
  %54 = load i32, i32* @CNTX_EMPTY_INT_ENABLE, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @PRIV_INSTR_INT_ENABLE, align 4
  %58 = load i32, i32* @PRIV_REG_INT_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %63 = call i32 @RREG32(i64 %62)
  %64 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %65 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %63, %67
  store i32 %68, i32* %19, align 4
  %69 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %70 = call i32 @RREG32(i64 %69)
  %71 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %72 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = and i32 %70, %74
  store i32 %75, i32* %20, align 4
  %76 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %77 = call i32 @RREG32(i64 %76)
  %78 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %79 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %77, %81
  store i32 %82, i32* %21, align 4
  %83 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %84 = call i32 @RREG32(i64 %83)
  %85 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %86 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  store i32 %89, i32* %22, align 4
  %90 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %91 = call i32 @RREG32(i64 %90)
  %92 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %93 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %91, %95
  store i32 %96, i32* %23, align 4
  %97 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %98 = call i32 @RREG32(i64 %97)
  %99 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %100 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %98, %102
  store i32 %103, i32* %24, align 4
  %104 = load i64, i64* @SDMA0_CNTL, align 8
  %105 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @RREG32(i64 %106)
  %108 = load i32, i32* @TRAP_ENABLE, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  store i32 %110, i32* %26, align 4
  %111 = load i64, i64* @SDMA0_CNTL, align 8
  %112 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @RREG32(i64 %113)
  %115 = load i32, i32* @TRAP_ENABLE, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %114, %116
  store i32 %117, i32* %27, align 4
  %118 = load i64, i64* @CP_ME1_PIPE0_INT_CNTL, align 8
  %119 = call i32 @RREG32(i64 %118)
  %120 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  store i32 %122, i32* %5, align 4
  %123 = load i64, i64* @CP_ME1_PIPE1_INT_CNTL, align 8
  %124 = call i32 @RREG32(i64 %123)
  %125 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %124, %126
  store i32 %127, i32* %6, align 4
  %128 = load i64, i64* @CP_ME1_PIPE2_INT_CNTL, align 8
  %129 = call i32 @RREG32(i64 %128)
  %130 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  store i32 %132, i32* %7, align 4
  %133 = load i64, i64* @CP_ME1_PIPE3_INT_CNTL, align 8
  %134 = call i32 @RREG32(i64 %133)
  %135 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  store i32 %137, i32* %8, align 4
  %138 = load i64, i64* @CP_ME2_PIPE0_INT_CNTL, align 8
  %139 = call i32 @RREG32(i64 %138)
  %140 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %141 = xor i32 %140, -1
  %142 = and i32 %139, %141
  store i32 %142, i32* %9, align 4
  %143 = load i64, i64* @CP_ME2_PIPE1_INT_CNTL, align 8
  %144 = call i32 @RREG32(i64 %143)
  %145 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  store i32 %147, i32* %10, align 4
  %148 = load i64, i64* @CP_ME2_PIPE2_INT_CNTL, align 8
  %149 = call i32 @RREG32(i64 %148)
  %150 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %151 = xor i32 %150, -1
  %152 = and i32 %149, %151
  store i32 %152, i32* %11, align 4
  %153 = load i64, i64* @CP_ME2_PIPE3_INT_CNTL, align 8
  %154 = call i32 @RREG32(i64 %153)
  %155 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %156 = xor i32 %155, -1
  %157 = and i32 %154, %156
  store i32 %157, i32* %12, align 4
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = call i64 @atomic_read(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %50
  %167 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %169 = load i32, i32* %4, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %166, %50
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = call i64 @atomic_read(i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %255

180:                                              ; preds = %171
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 2
  %183 = load %struct.radeon_ring*, %struct.radeon_ring** %182, align 8
  %184 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %185 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %183, i64 %184
  store %struct.radeon_ring* %185, %struct.radeon_ring** %28, align 8
  %186 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %187 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %188 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %217

191:                                              ; preds = %180
  %192 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %193 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  switch i32 %194, label %211 [
    i32 0, label %195
    i32 1, label %199
    i32 2, label %203
    i32 3, label %207
  ]

195:                                              ; preds = %191
  %196 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %197 = load i32, i32* %5, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %5, align 4
  br label %216

199:                                              ; preds = %191
  %200 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %201 = load i32, i32* %6, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %6, align 4
  br label %216

203:                                              ; preds = %191
  %204 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %205 = load i32, i32* %7, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %7, align 4
  br label %216

207:                                              ; preds = %191
  %208 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %209 = load i32, i32* %7, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %7, align 4
  br label %216

211:                                              ; preds = %191
  %212 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %213 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %211, %207, %203, %199, %195
  br label %254

217:                                              ; preds = %180
  %218 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %219 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %248

222:                                              ; preds = %217
  %223 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %224 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  switch i32 %225, label %242 [
    i32 0, label %226
    i32 1, label %230
    i32 2, label %234
    i32 3, label %238
  ]

226:                                              ; preds = %222
  %227 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %228 = load i32, i32* %9, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %9, align 4
  br label %247

230:                                              ; preds = %222
  %231 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %232 = load i32, i32* %10, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %10, align 4
  br label %247

234:                                              ; preds = %222
  %235 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %236 = load i32, i32* %11, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %11, align 4
  br label %247

238:                                              ; preds = %222
  %239 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %240 = load i32, i32* %11, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %11, align 4
  br label %247

242:                                              ; preds = %222
  %243 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %244 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %242, %238, %234, %230, %226
  br label %253

248:                                              ; preds = %217
  %249 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %250 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %248, %247
  br label %254

254:                                              ; preds = %253, %216
  br label %255

255:                                              ; preds = %254, %171
  %256 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  %262 = call i64 @atomic_read(i32* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %339

264:                                              ; preds = %255
  %265 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %266 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %265, i32 0, i32 2
  %267 = load %struct.radeon_ring*, %struct.radeon_ring** %266, align 8
  %268 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %269 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %267, i64 %268
  store %struct.radeon_ring* %269, %struct.radeon_ring** %29, align 8
  %270 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %271 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %272 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %301

275:                                              ; preds = %264
  %276 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %277 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  switch i32 %278, label %295 [
    i32 0, label %279
    i32 1, label %283
    i32 2, label %287
    i32 3, label %291
  ]

279:                                              ; preds = %275
  %280 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %281 = load i32, i32* %5, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %5, align 4
  br label %300

283:                                              ; preds = %275
  %284 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %285 = load i32, i32* %6, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %6, align 4
  br label %300

287:                                              ; preds = %275
  %288 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %289 = load i32, i32* %7, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %7, align 4
  br label %300

291:                                              ; preds = %275
  %292 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %293 = load i32, i32* %7, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %7, align 4
  br label %300

295:                                              ; preds = %275
  %296 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %297 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %295, %291, %287, %283, %279
  br label %338

301:                                              ; preds = %264
  %302 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %303 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 2
  br i1 %305, label %306, label %332

306:                                              ; preds = %301
  %307 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %308 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  switch i32 %309, label %326 [
    i32 0, label %310
    i32 1, label %314
    i32 2, label %318
    i32 3, label %322
  ]

310:                                              ; preds = %306
  %311 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %312 = load i32, i32* %9, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %9, align 4
  br label %331

314:                                              ; preds = %306
  %315 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %316 = load i32, i32* %10, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %10, align 4
  br label %331

318:                                              ; preds = %306
  %319 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %320 = load i32, i32* %11, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %11, align 4
  br label %331

322:                                              ; preds = %306
  %323 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %324 = load i32, i32* %11, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %11, align 4
  br label %331

326:                                              ; preds = %306
  %327 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %328 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %326, %322, %318, %314, %310
  br label %337

332:                                              ; preds = %301
  %333 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %334 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %335)
  br label %337

337:                                              ; preds = %332, %331
  br label %338

338:                                              ; preds = %337, %300
  br label %339

339:                                              ; preds = %338, %255
  %340 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %341 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 3
  %343 = load i32*, i32** %342, align 8
  %344 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  %346 = call i64 @atomic_read(i32* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %339
  %349 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %350 = load i32, i32* @TRAP_ENABLE, align 4
  %351 = load i32, i32* %26, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %26, align 4
  br label %353

353:                                              ; preds = %348, %339
  %354 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %355 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 3
  %357 = load i32*, i32** %356, align 8
  %358 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %359 = getelementptr inbounds i32, i32* %357, i64 %358
  %360 = call i64 @atomic_read(i32* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %353
  %363 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %364 = load i32, i32* @TRAP_ENABLE, align 4
  %365 = load i32, i32* %27, align 4
  %366 = or i32 %365, %364
  store i32 %366, i32* %27, align 4
  br label %367

367:                                              ; preds = %362, %353
  %368 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 2
  %371 = load i64*, i64** %370, align 8
  %372 = getelementptr inbounds i64, i64* %371, i64 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %383, label %375

375:                                              ; preds = %367
  %376 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %377 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 0
  %381 = call i64 @atomic_read(i32* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %375, %367
  %384 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %385 = load i32, i32* @VBLANK_INTERRUPT_MASK, align 4
  %386 = load i32, i32* %13, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %13, align 4
  br label %388

388:                                              ; preds = %383, %375
  %389 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %390 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 2
  %392 = load i64*, i64** %391, align 8
  %393 = getelementptr inbounds i64, i64* %392, i64 1
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %404, label %396

396:                                              ; preds = %388
  %397 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %398 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  %402 = call i64 @atomic_read(i32* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %409

404:                                              ; preds = %396, %388
  %405 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %406 = load i32, i32* @VBLANK_INTERRUPT_MASK, align 4
  %407 = load i32, i32* %14, align 4
  %408 = or i32 %407, %406
  store i32 %408, i32* %14, align 4
  br label %409

409:                                              ; preds = %404, %396
  %410 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %411 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 2
  %413 = load i64*, i64** %412, align 8
  %414 = getelementptr inbounds i64, i64* %413, i64 2
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %425, label %417

417:                                              ; preds = %409
  %418 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %419 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 2
  %423 = call i64 @atomic_read(i32* %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %417, %409
  %426 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %427 = load i32, i32* @VBLANK_INTERRUPT_MASK, align 4
  %428 = load i32, i32* %15, align 4
  %429 = or i32 %428, %427
  store i32 %429, i32* %15, align 4
  br label %430

430:                                              ; preds = %425, %417
  %431 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %432 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 2
  %434 = load i64*, i64** %433, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 3
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %446, label %438

438:                                              ; preds = %430
  %439 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %440 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i32 0, i32 1
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 3
  %444 = call i64 @atomic_read(i32* %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %451

446:                                              ; preds = %438, %430
  %447 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %448 = load i32, i32* @VBLANK_INTERRUPT_MASK, align 4
  %449 = load i32, i32* %16, align 4
  %450 = or i32 %449, %448
  store i32 %450, i32* %16, align 4
  br label %451

451:                                              ; preds = %446, %438
  %452 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %453 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %453, i32 0, i32 2
  %455 = load i64*, i64** %454, align 8
  %456 = getelementptr inbounds i64, i64* %455, i64 4
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %467, label %459

459:                                              ; preds = %451
  %460 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %461 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %461, i32 0, i32 1
  %463 = load i32*, i32** %462, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 4
  %465 = call i64 @atomic_read(i32* %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %459, %451
  %468 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %469 = load i32, i32* @VBLANK_INTERRUPT_MASK, align 4
  %470 = load i32, i32* %17, align 4
  %471 = or i32 %470, %469
  store i32 %471, i32* %17, align 4
  br label %472

472:                                              ; preds = %467, %459
  %473 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %474 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 2
  %476 = load i64*, i64** %475, align 8
  %477 = getelementptr inbounds i64, i64* %476, i64 5
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %488, label %480

480:                                              ; preds = %472
  %481 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %482 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %482, i32 0, i32 1
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 5
  %486 = call i64 @atomic_read(i32* %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %493

488:                                              ; preds = %480, %472
  %489 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %490 = load i32, i32* @VBLANK_INTERRUPT_MASK, align 4
  %491 = load i32, i32* %18, align 4
  %492 = or i32 %491, %490
  store i32 %492, i32* %18, align 4
  br label %493

493:                                              ; preds = %488, %480
  %494 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %495 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %495, i32 0, i32 0
  %497 = load i64*, i64** %496, align 8
  %498 = getelementptr inbounds i64, i64* %497, i64 0
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %508

501:                                              ; preds = %493
  %502 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %503 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %504 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %505 = or i32 %503, %504
  %506 = load i32, i32* %19, align 4
  %507 = or i32 %506, %505
  store i32 %507, i32* %19, align 4
  br label %508

508:                                              ; preds = %501, %493
  %509 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %510 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %510, i32 0, i32 0
  %512 = load i64*, i64** %511, align 8
  %513 = getelementptr inbounds i64, i64* %512, i64 1
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %508
  %517 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %518 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %519 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %520 = or i32 %518, %519
  %521 = load i32, i32* %20, align 4
  %522 = or i32 %521, %520
  store i32 %522, i32* %20, align 4
  br label %523

523:                                              ; preds = %516, %508
  %524 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %525 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %525, i32 0, i32 0
  %527 = load i64*, i64** %526, align 8
  %528 = getelementptr inbounds i64, i64* %527, i64 2
  %529 = load i64, i64* %528, align 8
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %538

531:                                              ; preds = %523
  %532 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %533 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %534 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %535 = or i32 %533, %534
  %536 = load i32, i32* %21, align 4
  %537 = or i32 %536, %535
  store i32 %537, i32* %21, align 4
  br label %538

538:                                              ; preds = %531, %523
  %539 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %540 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %540, i32 0, i32 0
  %542 = load i64*, i64** %541, align 8
  %543 = getelementptr inbounds i64, i64* %542, i64 3
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %553

546:                                              ; preds = %538
  %547 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %548 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %549 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %550 = or i32 %548, %549
  %551 = load i32, i32* %22, align 4
  %552 = or i32 %551, %550
  store i32 %552, i32* %22, align 4
  br label %553

553:                                              ; preds = %546, %538
  %554 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %555 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %555, i32 0, i32 0
  %557 = load i64*, i64** %556, align 8
  %558 = getelementptr inbounds i64, i64* %557, i64 4
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %568

561:                                              ; preds = %553
  %562 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %563 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %564 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %565 = or i32 %563, %564
  %566 = load i32, i32* %23, align 4
  %567 = or i32 %566, %565
  store i32 %567, i32* %23, align 4
  br label %568

568:                                              ; preds = %561, %553
  %569 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %570 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %570, i32 0, i32 0
  %572 = load i64*, i64** %571, align 8
  %573 = getelementptr inbounds i64, i64* %572, i64 5
  %574 = load i64, i64* %573, align 8
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %583

576:                                              ; preds = %568
  %577 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %578 = load i32, i32* @DC_HPDx_INT_EN, align 4
  %579 = load i32, i32* @DC_HPDx_RX_INT_EN, align 4
  %580 = or i32 %578, %579
  %581 = load i32, i32* %24, align 4
  %582 = or i32 %581, %580
  store i32 %582, i32* %24, align 4
  br label %583

583:                                              ; preds = %576, %568
  %584 = load i64, i64* @CP_INT_CNTL_RING0, align 8
  %585 = load i32, i32* %4, align 4
  %586 = call i32 @WREG32(i64 %584, i32 %585)
  %587 = load i64, i64* @SDMA0_CNTL, align 8
  %588 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %589 = add nsw i64 %587, %588
  %590 = load i32, i32* %26, align 4
  %591 = call i32 @WREG32(i64 %589, i32 %590)
  %592 = load i64, i64* @SDMA0_CNTL, align 8
  %593 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %594 = add nsw i64 %592, %593
  %595 = load i32, i32* %27, align 4
  %596 = call i32 @WREG32(i64 %594, i32 %595)
  %597 = load i64, i64* @CP_ME1_PIPE0_INT_CNTL, align 8
  %598 = load i32, i32* %5, align 4
  %599 = call i32 @WREG32(i64 %597, i32 %598)
  %600 = load i64, i64* @CP_ME1_PIPE1_INT_CNTL, align 8
  %601 = load i32, i32* %6, align 4
  %602 = call i32 @WREG32(i64 %600, i32 %601)
  %603 = load i64, i64* @CP_ME1_PIPE2_INT_CNTL, align 8
  %604 = load i32, i32* %7, align 4
  %605 = call i32 @WREG32(i64 %603, i32 %604)
  %606 = load i64, i64* @CP_ME1_PIPE3_INT_CNTL, align 8
  %607 = load i32, i32* %8, align 4
  %608 = call i32 @WREG32(i64 %606, i32 %607)
  %609 = load i64, i64* @CP_ME2_PIPE0_INT_CNTL, align 8
  %610 = load i32, i32* %9, align 4
  %611 = call i32 @WREG32(i64 %609, i32 %610)
  %612 = load i64, i64* @CP_ME2_PIPE1_INT_CNTL, align 8
  %613 = load i32, i32* %10, align 4
  %614 = call i32 @WREG32(i64 %612, i32 %613)
  %615 = load i64, i64* @CP_ME2_PIPE2_INT_CNTL, align 8
  %616 = load i32, i32* %11, align 4
  %617 = call i32 @WREG32(i64 %615, i32 %616)
  %618 = load i64, i64* @CP_ME2_PIPE3_INT_CNTL, align 8
  %619 = load i32, i32* %12, align 4
  %620 = call i32 @WREG32(i64 %618, i32 %619)
  %621 = load i64, i64* @GRBM_INT_CNTL, align 8
  %622 = load i32, i32* %25, align 4
  %623 = call i32 @WREG32(i64 %621, i32 %622)
  %624 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %625 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %626 = add nsw i64 %624, %625
  %627 = load i32, i32* %13, align 4
  %628 = call i32 @WREG32(i64 %626, i32 %627)
  %629 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %630 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %631 = add nsw i64 %629, %630
  %632 = load i32, i32* %14, align 4
  %633 = call i32 @WREG32(i64 %631, i32 %632)
  %634 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %635 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 8
  %637 = icmp sge i32 %636, 4
  br i1 %637, label %638, label %649

638:                                              ; preds = %583
  %639 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %640 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %641 = add nsw i64 %639, %640
  %642 = load i32, i32* %15, align 4
  %643 = call i32 @WREG32(i64 %641, i32 %642)
  %644 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %645 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %646 = add nsw i64 %644, %645
  %647 = load i32, i32* %16, align 4
  %648 = call i32 @WREG32(i64 %646, i32 %647)
  br label %649

649:                                              ; preds = %638, %583
  %650 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %651 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = icmp sge i32 %652, 6
  br i1 %653, label %654, label %665

654:                                              ; preds = %649
  %655 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %656 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %657 = add nsw i64 %655, %656
  %658 = load i32, i32* %17, align 4
  %659 = call i32 @WREG32(i64 %657, i32 %658)
  %660 = load i64, i64* @LB_INTERRUPT_MASK, align 8
  %661 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %662 = add nsw i64 %660, %661
  %663 = load i32, i32* %18, align 4
  %664 = call i32 @WREG32(i64 %662, i32 %663)
  br label %665

665:                                              ; preds = %654, %649
  %666 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %667 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 8
  %669 = icmp sge i32 %668, 2
  br i1 %669, label %670, label %681

670:                                              ; preds = %665
  %671 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %672 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %673 = add nsw i64 %671, %672
  %674 = load i32, i32* @GRPH_PFLIP_INT_MASK, align 4
  %675 = call i32 @WREG32(i64 %673, i32 %674)
  %676 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %677 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %678 = add nsw i64 %676, %677
  %679 = load i32, i32* @GRPH_PFLIP_INT_MASK, align 4
  %680 = call i32 @WREG32(i64 %678, i32 %679)
  br label %681

681:                                              ; preds = %670, %665
  %682 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %683 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = icmp sge i32 %684, 4
  br i1 %685, label %686, label %697

686:                                              ; preds = %681
  %687 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %688 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %689 = add nsw i64 %687, %688
  %690 = load i32, i32* @GRPH_PFLIP_INT_MASK, align 4
  %691 = call i32 @WREG32(i64 %689, i32 %690)
  %692 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %693 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %694 = add nsw i64 %692, %693
  %695 = load i32, i32* @GRPH_PFLIP_INT_MASK, align 4
  %696 = call i32 @WREG32(i64 %694, i32 %695)
  br label %697

697:                                              ; preds = %686, %681
  %698 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %699 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 8
  %701 = icmp sge i32 %700, 6
  br i1 %701, label %702, label %713

702:                                              ; preds = %697
  %703 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %704 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %705 = add nsw i64 %703, %704
  %706 = load i32, i32* @GRPH_PFLIP_INT_MASK, align 4
  %707 = call i32 @WREG32(i64 %705, i32 %706)
  %708 = load i64, i64* @GRPH_INT_CONTROL, align 8
  %709 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %710 = add nsw i64 %708, %709
  %711 = load i32, i32* @GRPH_PFLIP_INT_MASK, align 4
  %712 = call i32 @WREG32(i64 %710, i32 %711)
  br label %713

713:                                              ; preds = %702, %697
  %714 = load i64, i64* @DC_HPD1_INT_CONTROL, align 8
  %715 = load i32, i32* %19, align 4
  %716 = call i32 @WREG32(i64 %714, i32 %715)
  %717 = load i64, i64* @DC_HPD2_INT_CONTROL, align 8
  %718 = load i32, i32* %20, align 4
  %719 = call i32 @WREG32(i64 %717, i32 %718)
  %720 = load i64, i64* @DC_HPD3_INT_CONTROL, align 8
  %721 = load i32, i32* %21, align 4
  %722 = call i32 @WREG32(i64 %720, i32 %721)
  %723 = load i64, i64* @DC_HPD4_INT_CONTROL, align 8
  %724 = load i32, i32* %22, align 4
  %725 = call i32 @WREG32(i64 %723, i32 %724)
  %726 = load i64, i64* @DC_HPD5_INT_CONTROL, align 8
  %727 = load i32, i32* %23, align 4
  %728 = call i32 @WREG32(i64 %726, i32 %727)
  %729 = load i64, i64* @DC_HPD6_INT_CONTROL, align 8
  %730 = load i32, i32* %24, align 4
  %731 = call i32 @WREG32(i64 %729, i32 %730)
  %732 = load i64, i64* @SRBM_STATUS, align 8
  %733 = call i32 @RREG32(i64 %732)
  store i32 0, i32* %2, align 4
  br label %734

734:                                              ; preds = %713, %45, %35
  %735 = load i32, i32* %2, align 4
  ret i32 %735
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @cik_disable_interrupts(%struct.radeon_device*) #1

declare dso_local i32 @cik_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
