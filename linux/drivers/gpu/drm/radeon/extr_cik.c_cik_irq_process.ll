; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_irq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32, i32, i32, %struct.TYPE_10__, i32, i64, %struct.radeon_ring* }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32*, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_ring = type { i32, i32 }

@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cik_irq_process start: rptr %d, wptr %d\0A\00", align 1
@LB_D1_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"IH: IH event w/o asserted irq bit?\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"IH: D1 vblank\0A\00", align 1
@LB_D1_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"IH: D1 vline\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unhandled interrupt: %d %d\0A\00", align 1
@LB_D2_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"IH: D2 vblank\0A\00", align 1
@LB_D2_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"IH: D2 vline\0A\00", align 1
@LB_D3_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"IH: D3 vblank\0A\00", align 1
@LB_D3_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"IH: D3 vline\0A\00", align 1
@LB_D4_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"IH: D4 vblank\0A\00", align 1
@LB_D4_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"IH: D4 vline\0A\00", align 1
@LB_D5_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"IH: D5 vblank\0A\00", align 1
@LB_D5_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"IH: D5 vline\0A\00", align 1
@LB_D6_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"IH: D6 vblank\0A\00", align 1
@LB_D6_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"IH: D6 vline\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"IH: D%d flip\0A\00", align 1
@radeon_use_pflipirq = common dso_local global i32 0, align 4
@DC_HPD1_INTERRUPT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"IH: HPD1\0A\00", align 1
@DC_HPD2_INTERRUPT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"IH: HPD2\0A\00", align 1
@DC_HPD3_INTERRUPT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"IH: HPD3\0A\00", align 1
@DC_HPD4_INTERRUPT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"IH: HPD4\0A\00", align 1
@DC_HPD5_INTERRUPT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"IH: HPD5\0A\00", align 1
@DC_HPD6_INTERRUPT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"IH: HPD6\0A\00", align 1
@DC_HPD1_RX_INTERRUPT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"IH: HPD_RX 1\0A\00", align 1
@DC_HPD2_RX_INTERRUPT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"IH: HPD_RX 2\0A\00", align 1
@DC_HPD3_RX_INTERRUPT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"IH: HPD_RX 3\0A\00", align 1
@DC_HPD4_RX_INTERRUPT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"IH: HPD_RX 4\0A\00", align 1
@DC_HPD5_RX_INTERRUPT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"IH: HPD_RX 5\0A\00", align 1
@DC_HPD6_RX_INTERRUPT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"IH: HPD_RX 6\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"SRBM_READ_ERROR: 0x%x\0A\00", align 1
@SRBM_READ_ERROR = common dso_local global i32 0, align 4
@SRBM_INT_ACK = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [21 x i8] c"IH: UVD int: 0x%08x\0A\00", align 1
@R600_RING_TYPE_UVD_INDEX = common dso_local global i64 0, align 8
@VM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@VM_CONTEXT1_PROTECTION_FAULT_MCCLIENT = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [31 x i8] c"GPU fault detected: %d 0x%08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"IH: VCE int: 0x%08x\0A\00", align 1
@TN_RING_TYPE_VCE1_INDEX = common dso_local global i64 0, align 8
@TN_RING_TYPE_VCE2_INDEX = common dso_local global i64 0, align 8
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [12 x i8] c"IH: CP EOP\0A\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Illegal register access in command stream\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Illegal instruction in command stream\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"IH: SDMA trap\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [25 x i8] c"IH: thermal low to high\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"IH: thermal high to low\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"IH: GUI idle\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"Illegal instruction in SDMA command stream\0A\00", align 1
@IH_RB_RPTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_irq_process(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
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
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 10
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %23, align 8
  %25 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %24, i64 %25
  store %struct.radeon_ring* %26, %struct.radeon_ring** %4, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 10
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %30 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %31 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i64 %30
  store %struct.radeon_ring* %31, %struct.radeon_ring** %5, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %1
  %43 = load i32, i32* @IRQ_NONE, align 4
  store i32 %43, i32* %2, align 4
  br label %1198

44:                                               ; preds = %37
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i32 @cik_get_ih_wptr(%struct.radeon_device* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %1195, %44
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = call i64 @atomic_xchg(i32* %50, i32 1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @IRQ_NONE, align 4
  store i32 %54, i32* %2, align 4
  br label %1198

55:                                               ; preds = %47
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = call i32 (...) @rmb()
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = call i32 @cik_irq_ack(%struct.radeon_device* %64)
  br label %66

66:                                               ; preds = %1136, %55
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %1148

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = sdiv i32 %71, 4
  store i32 %72, i32* %14, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = and i32 %81, 255
  store i32 %82, i32* %8, align 4
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = and i32 %92, 268435455
  store i32 %93, i32* %9, align 4
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  %104 = and i32 %103, 255
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %8, align 4
  switch i32 %105, label %1132 [
    i32 1, label %106
    i32 2, label %190
    i32 3, label %274
    i32 4, label %358
    i32 5, label %442
    i32 6, label %526
    i32 8, label %610
    i32 10, label %610
    i32 12, label %610
    i32 14, label %610
    i32 16, label %610
    i32 18, label %610
    i32 42, label %625
    i32 96, label %908
    i32 124, label %914
    i32 146, label %920
    i32 147, label %920
    i32 167, label %957
    i32 176, label %974
    i32 177, label %974
    i32 181, label %978
    i32 184, label %1034
    i32 185, label %1050
    i32 224, label %1066
    i32 230, label %1094
    i32 231, label %1101
    i32 233, label %1108
    i32 241, label %1110
    i32 247, label %1110
  ]

106:                                              ; preds = %70
  %107 = load i32, i32* %9, align 4
  switch i32 %107, label %185 [
    i32 0, label %108
    i32 1, label %162
  ]

108:                                              ; preds = %106
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %108
  %119 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %108
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %120
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @drm_handle_vblank(i32 %131, i32 0)
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = call i32 @wake_up(i32* %138)
  br label %140

140:                                              ; preds = %128, %120
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = call i32 @atomic_read(i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %149, i32 0)
  br label %151

151:                                              ; preds = %148, %140
  %152 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %153
  store i32 %160, i32* %158, align 8
  %161 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %189

162:                                              ; preds = %106
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %162
  %173 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %162
  %175 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %176
  store i32 %183, i32* %181, align 8
  %184 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %189

185:                                              ; preds = %106
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %174, %151
  br label %1136

190:                                              ; preds = %70
  %191 = load i32, i32* %9, align 4
  switch i32 %191, label %269 [
    i32 0, label %192
    i32 1, label %246
  ]

192:                                              ; preds = %190
  %193 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %192
  %203 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %192
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 7
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %204
  %213 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %214 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @drm_handle_vblank(i32 %215, i32 1)
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  store i32 1, i32* %219, align 8
  %220 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %221 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %220, i32 0, i32 7
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  %223 = call i32 @wake_up(i32* %222)
  br label %224

224:                                              ; preds = %212, %204
  %225 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %226 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %225, i32 0, i32 7
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = call i32 @atomic_read(i32* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %224
  %233 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %234 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %233, i32 1)
  br label %235

235:                                              ; preds = %232, %224
  %236 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %239 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %238, i32 0, i32 7
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, %237
  store i32 %244, i32* %242, align 4
  %245 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %273

246:                                              ; preds = %190
  %247 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %248 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %247, i32 0, i32 7
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %246
  %257 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %246
  %259 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %262 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %261, i32 0, i32 7
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, %260
  store i32 %267, i32* %265, align 4
  %268 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %273

269:                                              ; preds = %190
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %9, align 4
  %272 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %258, %235
  br label %1136

274:                                              ; preds = %70
  %275 = load i32, i32* %9, align 4
  switch i32 %275, label %353 [
    i32 0, label %276
    i32 1, label %330
  ]

276:                                              ; preds = %274
  %277 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %278 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @LB_D3_VBLANK_INTERRUPT, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %276
  %287 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %288

288:                                              ; preds = %286, %276
  %289 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %290 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %289, i32 0, i32 7
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 2
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %308

296:                                              ; preds = %288
  %297 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %298 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %297, i32 0, i32 8
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @drm_handle_vblank(i32 %299, i32 2)
  %301 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %302 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  store i32 1, i32* %303, align 8
  %304 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %305 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 2
  %307 = call i32 @wake_up(i32* %306)
  br label %308

308:                                              ; preds = %296, %288
  %309 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %310 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %309, i32 0, i32 7
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 2
  %314 = call i32 @atomic_read(i32* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %308
  %317 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %318 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %317, i32 2)
  br label %319

319:                                              ; preds = %316, %308
  %320 = load i32, i32* @LB_D3_VBLANK_INTERRUPT, align 4
  %321 = xor i32 %320, -1
  %322 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %323 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = and i32 %327, %321
  store i32 %328, i32* %326, align 8
  %329 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %357

330:                                              ; preds = %274
  %331 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %332 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @LB_D3_VLINE_INTERRUPT, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %330
  %341 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %342

342:                                              ; preds = %340, %330
  %343 = load i32, i32* @LB_D3_VLINE_INTERRUPT, align 4
  %344 = xor i32 %343, -1
  %345 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %346 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %345, i32 0, i32 7
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = and i32 %350, %344
  store i32 %351, i32* %349, align 8
  %352 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %357

353:                                              ; preds = %274
  %354 = load i32, i32* %8, align 4
  %355 = load i32, i32* %9, align 4
  %356 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %354, i32 %355)
  br label %357

357:                                              ; preds = %353, %342, %319
  br label %1136

358:                                              ; preds = %70
  %359 = load i32, i32* %9, align 4
  switch i32 %359, label %437 [
    i32 0, label %360
    i32 1, label %414
  ]

360:                                              ; preds = %358
  %361 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %362 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %361, i32 0, i32 7
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @LB_D4_VBLANK_INTERRUPT, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %360
  %371 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %372

372:                                              ; preds = %370, %360
  %373 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %374 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %373, i32 0, i32 7
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 3
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 3
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %392

380:                                              ; preds = %372
  %381 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %382 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %381, i32 0, i32 8
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @drm_handle_vblank(i32 %383, i32 3)
  %385 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %386 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 0
  store i32 1, i32* %387, align 8
  %388 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %389 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %388, i32 0, i32 7
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 2
  %391 = call i32 @wake_up(i32* %390)
  br label %392

392:                                              ; preds = %380, %372
  %393 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %394 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %393, i32 0, i32 7
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 1
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 3
  %398 = call i32 @atomic_read(i32* %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %392
  %401 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %402 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %401, i32 3)
  br label %403

403:                                              ; preds = %400, %392
  %404 = load i32, i32* @LB_D4_VBLANK_INTERRUPT, align 4
  %405 = xor i32 %404, -1
  %406 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %407 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %406, i32 0, i32 7
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 4
  %412 = and i32 %411, %405
  store i32 %412, i32* %410, align 4
  %413 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %441

414:                                              ; preds = %358
  %415 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %416 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %415, i32 0, i32 7
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @LB_D4_VLINE_INTERRUPT, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %414
  %425 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %426

426:                                              ; preds = %424, %414
  %427 = load i32, i32* @LB_D4_VLINE_INTERRUPT, align 4
  %428 = xor i32 %427, -1
  %429 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %430 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %429, i32 0, i32 7
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = and i32 %434, %428
  store i32 %435, i32* %433, align 4
  %436 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %441

437:                                              ; preds = %358
  %438 = load i32, i32* %8, align 4
  %439 = load i32, i32* %9, align 4
  %440 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %438, i32 %439)
  br label %441

441:                                              ; preds = %437, %426, %403
  br label %1136

442:                                              ; preds = %70
  %443 = load i32, i32* %9, align 4
  switch i32 %443, label %521 [
    i32 0, label %444
    i32 1, label %498
  ]

444:                                              ; preds = %442
  %445 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %446 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %445, i32 0, i32 7
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 4
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @LB_D5_VBLANK_INTERRUPT, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %456, label %454

454:                                              ; preds = %444
  %455 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %456

456:                                              ; preds = %454, %444
  %457 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %458 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %457, i32 0, i32 7
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 3
  %460 = load i32*, i32** %459, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 4
  %462 = load i32, i32* %461, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %476

464:                                              ; preds = %456
  %465 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %466 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %465, i32 0, i32 8
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @drm_handle_vblank(i32 %467, i32 4)
  %469 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %470 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %469, i32 0, i32 2
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 0
  store i32 1, i32* %471, align 8
  %472 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %473 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %472, i32 0, i32 7
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 2
  %475 = call i32 @wake_up(i32* %474)
  br label %476

476:                                              ; preds = %464, %456
  %477 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %478 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %477, i32 0, i32 7
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 1
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 4
  %482 = call i32 @atomic_read(i32* %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %476
  %485 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %486 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %485, i32 4)
  br label %487

487:                                              ; preds = %484, %476
  %488 = load i32, i32* @LB_D5_VBLANK_INTERRUPT, align 4
  %489 = xor i32 %488, -1
  %490 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %491 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %490, i32 0, i32 7
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %493, i32 0, i32 4
  %495 = load i32, i32* %494, align 8
  %496 = and i32 %495, %489
  store i32 %496, i32* %494, align 8
  %497 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %525

498:                                              ; preds = %442
  %499 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %500 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %499, i32 0, i32 7
  %501 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 4
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* @LB_D5_VLINE_INTERRUPT, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %510, label %508

508:                                              ; preds = %498
  %509 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %510

510:                                              ; preds = %508, %498
  %511 = load i32, i32* @LB_D5_VLINE_INTERRUPT, align 4
  %512 = xor i32 %511, -1
  %513 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %514 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %513, i32 0, i32 7
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 4
  %518 = load i32, i32* %517, align 8
  %519 = and i32 %518, %512
  store i32 %519, i32* %517, align 8
  %520 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %525

521:                                              ; preds = %442
  %522 = load i32, i32* %8, align 4
  %523 = load i32, i32* %9, align 4
  %524 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %522, i32 %523)
  br label %525

525:                                              ; preds = %521, %510, %487
  br label %1136

526:                                              ; preds = %70
  %527 = load i32, i32* %9, align 4
  switch i32 %527, label %605 [
    i32 0, label %528
    i32 1, label %582
  ]

528:                                              ; preds = %526
  %529 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %530 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %529, i32 0, i32 7
  %531 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 5
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* @LB_D6_VBLANK_INTERRUPT, align 4
  %536 = and i32 %534, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %540, label %538

538:                                              ; preds = %528
  %539 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %540

540:                                              ; preds = %538, %528
  %541 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %542 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %541, i32 0, i32 7
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i32 0, i32 3
  %544 = load i32*, i32** %543, align 8
  %545 = getelementptr inbounds i32, i32* %544, i64 5
  %546 = load i32, i32* %545, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %560

548:                                              ; preds = %540
  %549 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %550 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %549, i32 0, i32 8
  %551 = load i32, i32* %550, align 8
  %552 = call i32 @drm_handle_vblank(i32 %551, i32 5)
  %553 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %554 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %553, i32 0, i32 2
  %555 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %554, i32 0, i32 0
  store i32 1, i32* %555, align 8
  %556 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %557 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %556, i32 0, i32 7
  %558 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %557, i32 0, i32 2
  %559 = call i32 @wake_up(i32* %558)
  br label %560

560:                                              ; preds = %548, %540
  %561 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %562 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %561, i32 0, i32 7
  %563 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %562, i32 0, i32 1
  %564 = load i32*, i32** %563, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 5
  %566 = call i32 @atomic_read(i32* %565)
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %560
  %569 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %570 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %569, i32 5)
  br label %571

571:                                              ; preds = %568, %560
  %572 = load i32, i32* @LB_D6_VBLANK_INTERRUPT, align 4
  %573 = xor i32 %572, -1
  %574 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %575 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %574, i32 0, i32 7
  %576 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %577, i32 0, i32 5
  %579 = load i32, i32* %578, align 4
  %580 = and i32 %579, %573
  store i32 %580, i32* %578, align 4
  %581 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %609

582:                                              ; preds = %526
  %583 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %584 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %583, i32 0, i32 7
  %585 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %586, i32 0, i32 5
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* @LB_D6_VLINE_INTERRUPT, align 4
  %590 = and i32 %588, %589
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %594, label %592

592:                                              ; preds = %582
  %593 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %594

594:                                              ; preds = %592, %582
  %595 = load i32, i32* @LB_D6_VLINE_INTERRUPT, align 4
  %596 = xor i32 %595, -1
  %597 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %598 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %597, i32 0, i32 7
  %599 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %600, i32 0, i32 5
  %602 = load i32, i32* %601, align 4
  %603 = and i32 %602, %596
  store i32 %603, i32* %601, align 4
  %604 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %609

605:                                              ; preds = %526
  %606 = load i32, i32* %8, align 4
  %607 = load i32, i32* %9, align 4
  %608 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %606, i32 %607)
  br label %609

609:                                              ; preds = %605, %594, %571
  br label %1136

610:                                              ; preds = %70, %70, %70, %70, %70, %70
  %611 = load i32, i32* %8, align 4
  %612 = sub nsw i32 %611, 8
  %613 = ashr i32 %612, 1
  %614 = add nsw i32 %613, 1
  %615 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %614)
  %616 = load i32, i32* @radeon_use_pflipirq, align 4
  %617 = icmp sgt i32 %616, 0
  br i1 %617, label %618, label %624

618:                                              ; preds = %610
  %619 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %620 = load i32, i32* %8, align 4
  %621 = sub nsw i32 %620, 8
  %622 = ashr i32 %621, 1
  %623 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %619, i32 %622)
  br label %624

624:                                              ; preds = %618, %610
  br label %1136

625:                                              ; preds = %70
  %626 = load i32, i32* %9, align 4
  switch i32 %626, label %903 [
    i32 0, label %627
    i32 1, label %650
    i32 2, label %673
    i32 3, label %696
    i32 4, label %719
    i32 5, label %742
    i32 6, label %765
    i32 7, label %788
    i32 8, label %811
    i32 9, label %834
    i32 10, label %857
    i32 11, label %880
  ]

627:                                              ; preds = %625
  %628 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %629 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %628, i32 0, i32 7
  %630 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %630, i32 0, i32 0
  %632 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %631, i32 0, i32 0
  %633 = load i32, i32* %632, align 8
  %634 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %635 = and i32 %633, %634
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %639, label %637

637:                                              ; preds = %627
  %638 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %639

639:                                              ; preds = %637, %627
  %640 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %641 = xor i32 %640, -1
  %642 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %643 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %642, i32 0, i32 7
  %644 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %644, i32 0, i32 0
  %646 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 8
  %648 = and i32 %647, %641
  store i32 %648, i32* %646, align 8
  store i32 1, i32* %15, align 4
  %649 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %907

650:                                              ; preds = %625
  %651 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %652 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %651, i32 0, i32 7
  %653 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %652, i32 0, i32 0
  %654 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %653, i32 0, i32 0
  %655 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %654, i32 0, i32 1
  %656 = load i32, i32* %655, align 4
  %657 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %658 = and i32 %656, %657
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %662, label %660

660:                                              ; preds = %650
  %661 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %662

662:                                              ; preds = %660, %650
  %663 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %664 = xor i32 %663, -1
  %665 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %666 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %665, i32 0, i32 7
  %667 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %667, i32 0, i32 0
  %669 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %668, i32 0, i32 1
  %670 = load i32, i32* %669, align 4
  %671 = and i32 %670, %664
  store i32 %671, i32* %669, align 4
  store i32 1, i32* %15, align 4
  %672 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %907

673:                                              ; preds = %625
  %674 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %675 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %674, i32 0, i32 7
  %676 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %675, i32 0, i32 0
  %677 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %676, i32 0, i32 0
  %678 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %677, i32 0, i32 2
  %679 = load i32, i32* %678, align 8
  %680 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %681 = and i32 %679, %680
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %685, label %683

683:                                              ; preds = %673
  %684 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %685

685:                                              ; preds = %683, %673
  %686 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %687 = xor i32 %686, -1
  %688 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %689 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %688, i32 0, i32 7
  %690 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %689, i32 0, i32 0
  %691 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %690, i32 0, i32 0
  %692 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %691, i32 0, i32 2
  %693 = load i32, i32* %692, align 8
  %694 = and i32 %693, %687
  store i32 %694, i32* %692, align 8
  store i32 1, i32* %15, align 4
  %695 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  br label %907

696:                                              ; preds = %625
  %697 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %698 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %697, i32 0, i32 7
  %699 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %698, i32 0, i32 0
  %700 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %699, i32 0, i32 0
  %701 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %700, i32 0, i32 3
  %702 = load i32, i32* %701, align 4
  %703 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %704 = and i32 %702, %703
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %708, label %706

706:                                              ; preds = %696
  %707 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %708

708:                                              ; preds = %706, %696
  %709 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %710 = xor i32 %709, -1
  %711 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %712 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %711, i32 0, i32 7
  %713 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %712, i32 0, i32 0
  %714 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %713, i32 0, i32 0
  %715 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %714, i32 0, i32 3
  %716 = load i32, i32* %715, align 4
  %717 = and i32 %716, %710
  store i32 %717, i32* %715, align 4
  store i32 1, i32* %15, align 4
  %718 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %907

719:                                              ; preds = %625
  %720 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %721 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %720, i32 0, i32 7
  %722 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %721, i32 0, i32 0
  %723 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %722, i32 0, i32 0
  %724 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %723, i32 0, i32 4
  %725 = load i32, i32* %724, align 8
  %726 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %727 = and i32 %725, %726
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %731, label %729

729:                                              ; preds = %719
  %730 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %731

731:                                              ; preds = %729, %719
  %732 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %733 = xor i32 %732, -1
  %734 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %735 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %734, i32 0, i32 7
  %736 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %735, i32 0, i32 0
  %737 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %736, i32 0, i32 0
  %738 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %737, i32 0, i32 4
  %739 = load i32, i32* %738, align 8
  %740 = and i32 %739, %733
  store i32 %740, i32* %738, align 8
  store i32 1, i32* %15, align 4
  %741 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %907

742:                                              ; preds = %625
  %743 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %744 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %743, i32 0, i32 7
  %745 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %744, i32 0, i32 0
  %746 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %745, i32 0, i32 0
  %747 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %746, i32 0, i32 5
  %748 = load i32, i32* %747, align 4
  %749 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %750 = and i32 %748, %749
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %754, label %752

752:                                              ; preds = %742
  %753 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %754

754:                                              ; preds = %752, %742
  %755 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %756 = xor i32 %755, -1
  %757 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %758 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %757, i32 0, i32 7
  %759 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %758, i32 0, i32 0
  %760 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %759, i32 0, i32 0
  %761 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %760, i32 0, i32 5
  %762 = load i32, i32* %761, align 4
  %763 = and i32 %762, %756
  store i32 %763, i32* %761, align 4
  store i32 1, i32* %15, align 4
  %764 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  br label %907

765:                                              ; preds = %625
  %766 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %767 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %766, i32 0, i32 7
  %768 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %767, i32 0, i32 0
  %769 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %768, i32 0, i32 0
  %770 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %769, i32 0, i32 0
  %771 = load i32, i32* %770, align 8
  %772 = load i32, i32* @DC_HPD1_RX_INTERRUPT, align 4
  %773 = and i32 %771, %772
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %777, label %775

775:                                              ; preds = %765
  %776 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %777

777:                                              ; preds = %775, %765
  %778 = load i32, i32* @DC_HPD1_RX_INTERRUPT, align 4
  %779 = xor i32 %778, -1
  %780 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %781 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %780, i32 0, i32 7
  %782 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %781, i32 0, i32 0
  %783 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %782, i32 0, i32 0
  %784 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 8
  %786 = and i32 %785, %779
  store i32 %786, i32* %784, align 8
  store i32 1, i32* %16, align 4
  %787 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %907

788:                                              ; preds = %625
  %789 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %790 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %789, i32 0, i32 7
  %791 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %790, i32 0, i32 0
  %792 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %791, i32 0, i32 0
  %793 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %792, i32 0, i32 1
  %794 = load i32, i32* %793, align 4
  %795 = load i32, i32* @DC_HPD2_RX_INTERRUPT, align 4
  %796 = and i32 %794, %795
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %800, label %798

798:                                              ; preds = %788
  %799 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %800

800:                                              ; preds = %798, %788
  %801 = load i32, i32* @DC_HPD2_RX_INTERRUPT, align 4
  %802 = xor i32 %801, -1
  %803 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %804 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %803, i32 0, i32 7
  %805 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %804, i32 0, i32 0
  %806 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %805, i32 0, i32 0
  %807 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %806, i32 0, i32 1
  %808 = load i32, i32* %807, align 4
  %809 = and i32 %808, %802
  store i32 %809, i32* %807, align 4
  store i32 1, i32* %16, align 4
  %810 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  br label %907

811:                                              ; preds = %625
  %812 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %813 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %812, i32 0, i32 7
  %814 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %813, i32 0, i32 0
  %815 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %814, i32 0, i32 0
  %816 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %815, i32 0, i32 2
  %817 = load i32, i32* %816, align 8
  %818 = load i32, i32* @DC_HPD3_RX_INTERRUPT, align 4
  %819 = and i32 %817, %818
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %823, label %821

821:                                              ; preds = %811
  %822 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %823

823:                                              ; preds = %821, %811
  %824 = load i32, i32* @DC_HPD3_RX_INTERRUPT, align 4
  %825 = xor i32 %824, -1
  %826 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %827 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %826, i32 0, i32 7
  %828 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %827, i32 0, i32 0
  %829 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %828, i32 0, i32 0
  %830 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %829, i32 0, i32 2
  %831 = load i32, i32* %830, align 8
  %832 = and i32 %831, %825
  store i32 %832, i32* %830, align 8
  store i32 1, i32* %16, align 4
  %833 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  br label %907

834:                                              ; preds = %625
  %835 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %836 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %835, i32 0, i32 7
  %837 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %836, i32 0, i32 0
  %838 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %837, i32 0, i32 0
  %839 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %838, i32 0, i32 3
  %840 = load i32, i32* %839, align 4
  %841 = load i32, i32* @DC_HPD4_RX_INTERRUPT, align 4
  %842 = and i32 %840, %841
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %846, label %844

844:                                              ; preds = %834
  %845 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %846

846:                                              ; preds = %844, %834
  %847 = load i32, i32* @DC_HPD4_RX_INTERRUPT, align 4
  %848 = xor i32 %847, -1
  %849 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %850 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %849, i32 0, i32 7
  %851 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %850, i32 0, i32 0
  %852 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %851, i32 0, i32 0
  %853 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %852, i32 0, i32 3
  %854 = load i32, i32* %853, align 4
  %855 = and i32 %854, %848
  store i32 %855, i32* %853, align 4
  store i32 1, i32* %16, align 4
  %856 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %907

857:                                              ; preds = %625
  %858 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %859 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %858, i32 0, i32 7
  %860 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %859, i32 0, i32 0
  %861 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %860, i32 0, i32 0
  %862 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %861, i32 0, i32 4
  %863 = load i32, i32* %862, align 8
  %864 = load i32, i32* @DC_HPD5_RX_INTERRUPT, align 4
  %865 = and i32 %863, %864
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %869, label %867

867:                                              ; preds = %857
  %868 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %869

869:                                              ; preds = %867, %857
  %870 = load i32, i32* @DC_HPD5_RX_INTERRUPT, align 4
  %871 = xor i32 %870, -1
  %872 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %873 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %872, i32 0, i32 7
  %874 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %873, i32 0, i32 0
  %875 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %874, i32 0, i32 0
  %876 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %875, i32 0, i32 4
  %877 = load i32, i32* %876, align 8
  %878 = and i32 %877, %871
  store i32 %878, i32* %876, align 8
  store i32 1, i32* %16, align 4
  %879 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  br label %907

880:                                              ; preds = %625
  %881 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %882 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %881, i32 0, i32 7
  %883 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %882, i32 0, i32 0
  %884 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %883, i32 0, i32 0
  %885 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %884, i32 0, i32 5
  %886 = load i32, i32* %885, align 4
  %887 = load i32, i32* @DC_HPD6_RX_INTERRUPT, align 4
  %888 = and i32 %886, %887
  %889 = icmp ne i32 %888, 0
  br i1 %889, label %892, label %890

890:                                              ; preds = %880
  %891 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %892

892:                                              ; preds = %890, %880
  %893 = load i32, i32* @DC_HPD6_RX_INTERRUPT, align 4
  %894 = xor i32 %893, -1
  %895 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %896 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %895, i32 0, i32 7
  %897 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %896, i32 0, i32 0
  %898 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %897, i32 0, i32 0
  %899 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %898, i32 0, i32 5
  %900 = load i32, i32* %899, align 4
  %901 = and i32 %900, %894
  store i32 %901, i32* %899, align 4
  store i32 1, i32* %16, align 4
  %902 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  br label %907

903:                                              ; preds = %625
  %904 = load i32, i32* %8, align 4
  %905 = load i32, i32* %9, align 4
  %906 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %904, i32 %905)
  br label %907

907:                                              ; preds = %903, %892, %869, %846, %823, %800, %777, %754, %731, %708, %685, %662, %639
  br label %1136

908:                                              ; preds = %70
  %909 = load i32, i32* @SRBM_READ_ERROR, align 4
  %910 = call i32 @RREG32(i32 %909)
  %911 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 %910)
  %912 = load i32, i32* @SRBM_INT_ACK, align 4
  %913 = call i32 @WREG32(i32 %912, i32 1)
  br label %1136

914:                                              ; preds = %70
  %915 = load i32, i32* %9, align 4
  %916 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 %915)
  %917 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %918 = load i64, i64* @R600_RING_TYPE_UVD_INDEX, align 8
  %919 = call i32 @radeon_fence_process(%struct.radeon_device* %917, i64 %918)
  br label %1136

920:                                              ; preds = %70, %70
  %921 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_ADDR, align 4
  %922 = call i32 @RREG32(i32 %921)
  store i32 %922, i32* %18, align 4
  %923 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %924 = call i32 @RREG32(i32 %923)
  store i32 %924, i32* %19, align 4
  %925 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_MCCLIENT, align 4
  %926 = call i32 @RREG32(i32 %925)
  store i32 %926, i32* %20, align 4
  %927 = load i32, i32* @VM_CONTEXT1_CNTL2, align 4
  %928 = call i32 @WREG32_P(i32 %927, i32 1, i32 -2)
  %929 = load i32, i32* %18, align 4
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %931, label %935

931:                                              ; preds = %920
  %932 = load i32, i32* %19, align 4
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %935

934:                                              ; preds = %931
  br label %1136

935:                                              ; preds = %931, %920
  %936 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %937 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %936, i32 0, i32 6
  %938 = load i32, i32* %937, align 8
  %939 = load i32, i32* %8, align 4
  %940 = load i32, i32* %9, align 4
  %941 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %938, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 %939, i32 %940)
  %942 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %943 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %942, i32 0, i32 6
  %944 = load i32, i32* %943, align 8
  %945 = load i32, i32* %18, align 4
  %946 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %944, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0), i32 %945)
  %947 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %948 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %947, i32 0, i32 6
  %949 = load i32, i32* %948, align 8
  %950 = load i32, i32* %19, align 4
  %951 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %949, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0), i32 %950)
  %952 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %953 = load i32, i32* %19, align 4
  %954 = load i32, i32* %18, align 4
  %955 = load i32, i32* %20, align 4
  %956 = call i32 @cik_vm_decode_fault(%struct.radeon_device* %952, i32 %953, i32 %954, i32 %955)
  br label %1136

957:                                              ; preds = %70
  %958 = load i32, i32* %9, align 4
  %959 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i32 %958)
  %960 = load i32, i32* %9, align 4
  switch i32 %960, label %969 [
    i32 0, label %961
    i32 1, label %965
  ]

961:                                              ; preds = %957
  %962 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %963 = load i64, i64* @TN_RING_TYPE_VCE1_INDEX, align 8
  %964 = call i32 @radeon_fence_process(%struct.radeon_device* %962, i64 %963)
  br label %973

965:                                              ; preds = %957
  %966 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %967 = load i64, i64* @TN_RING_TYPE_VCE2_INDEX, align 8
  %968 = call i32 @radeon_fence_process(%struct.radeon_device* %966, i64 %967)
  br label %973

969:                                              ; preds = %957
  %970 = load i32, i32* %8, align 4
  %971 = load i32, i32* %9, align 4
  %972 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %970, i32 %971)
  br label %973

973:                                              ; preds = %969, %965, %961
  br label %1136

974:                                              ; preds = %70, %70
  %975 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %976 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %977 = call i32 @radeon_fence_process(%struct.radeon_device* %975, i64 %976)
  br label %1136

978:                                              ; preds = %70
  %979 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  %980 = load i32, i32* %10, align 4
  %981 = and i32 %980, 96
  %982 = ashr i32 %981, 5
  store i32 %982, i32* %11, align 4
  %983 = load i32, i32* %10, align 4
  %984 = and i32 %983, 24
  %985 = ashr i32 %984, 3
  store i32 %985, i32* %12, align 4
  %986 = load i32, i32* %10, align 4
  %987 = and i32 %986, 7
  %988 = ashr i32 %987, 0
  store i32 %988, i32* %13, align 4
  %989 = load i32, i32* %11, align 4
  switch i32 %989, label %1033 [
    i32 0, label %990
    i32 1, label %994
    i32 2, label %994
  ]

990:                                              ; preds = %978
  %991 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %992 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %993 = call i32 @radeon_fence_process(%struct.radeon_device* %991, i64 %992)
  br label %1033

994:                                              ; preds = %978, %978
  %995 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %996 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %995, i32 0, i32 0
  %997 = load i32, i32* %996, align 4
  %998 = load i32, i32* %11, align 4
  %999 = icmp eq i32 %997, %998
  %1000 = zext i1 %999 to i32
  %1001 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %1002 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %1001, i32 0, i32 1
  %1003 = load i32, i32* %1002, align 4
  %1004 = load i32, i32* %12, align 4
  %1005 = icmp eq i32 %1003, %1004
  %1006 = zext i1 %1005 to i32
  %1007 = and i32 %1000, %1006
  %1008 = icmp ne i32 %1007, 0
  br i1 %1008, label %1009, label %1013

1009:                                             ; preds = %994
  %1010 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1011 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %1012 = call i32 @radeon_fence_process(%struct.radeon_device* %1010, i64 %1011)
  br label %1013

1013:                                             ; preds = %1009, %994
  %1014 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %1015 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %1014, i32 0, i32 0
  %1016 = load i32, i32* %1015, align 4
  %1017 = load i32, i32* %11, align 4
  %1018 = icmp eq i32 %1016, %1017
  %1019 = zext i1 %1018 to i32
  %1020 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %1021 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %1020, i32 0, i32 1
  %1022 = load i32, i32* %1021, align 4
  %1023 = load i32, i32* %12, align 4
  %1024 = icmp eq i32 %1022, %1023
  %1025 = zext i1 %1024 to i32
  %1026 = and i32 %1019, %1025
  %1027 = icmp ne i32 %1026, 0
  br i1 %1027, label %1028, label %1032

1028:                                             ; preds = %1013
  %1029 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1030 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %1031 = call i32 @radeon_fence_process(%struct.radeon_device* %1029, i64 %1030)
  br label %1032

1032:                                             ; preds = %1028, %1013
  br label %1033

1033:                                             ; preds = %978, %1032, %990
  br label %1136

1034:                                             ; preds = %70
  %1035 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0))
  %1036 = load i32, i32* %10, align 4
  %1037 = and i32 %1036, 96
  %1038 = ashr i32 %1037, 5
  store i32 %1038, i32* %11, align 4
  %1039 = load i32, i32* %10, align 4
  %1040 = and i32 %1039, 24
  %1041 = ashr i32 %1040, 3
  store i32 %1041, i32* %12, align 4
  %1042 = load i32, i32* %10, align 4
  %1043 = and i32 %1042, 7
  %1044 = ashr i32 %1043, 0
  store i32 %1044, i32* %13, align 4
  %1045 = load i32, i32* %11, align 4
  switch i32 %1045, label %1049 [
    i32 0, label %1046
    i32 1, label %1047
    i32 2, label %1048
  ]

1046:                                             ; preds = %1034
  store i32 1, i32* %17, align 4
  br label %1049

1047:                                             ; preds = %1034
  store i32 1, i32* %17, align 4
  br label %1049

1048:                                             ; preds = %1034
  store i32 1, i32* %17, align 4
  br label %1049

1049:                                             ; preds = %1034, %1048, %1047, %1046
  br label %1136

1050:                                             ; preds = %70
  %1051 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0))
  %1052 = load i32, i32* %10, align 4
  %1053 = and i32 %1052, 96
  %1054 = ashr i32 %1053, 5
  store i32 %1054, i32* %11, align 4
  %1055 = load i32, i32* %10, align 4
  %1056 = and i32 %1055, 24
  %1057 = ashr i32 %1056, 3
  store i32 %1057, i32* %12, align 4
  %1058 = load i32, i32* %10, align 4
  %1059 = and i32 %1058, 7
  %1060 = ashr i32 %1059, 0
  store i32 %1060, i32* %13, align 4
  %1061 = load i32, i32* %11, align 4
  switch i32 %1061, label %1065 [
    i32 0, label %1062
    i32 1, label %1063
    i32 2, label %1064
  ]

1062:                                             ; preds = %1050
  store i32 1, i32* %17, align 4
  br label %1065

1063:                                             ; preds = %1050
  store i32 1, i32* %17, align 4
  br label %1065

1064:                                             ; preds = %1050
  store i32 1, i32* %17, align 4
  br label %1065

1065:                                             ; preds = %1050, %1064, %1063, %1062
  br label %1136

1066:                                             ; preds = %70
  %1067 = load i32, i32* %10, align 4
  %1068 = and i32 %1067, 3
  %1069 = ashr i32 %1068, 0
  store i32 %1069, i32* %11, align 4
  %1070 = load i32, i32* %10, align 4
  %1071 = and i32 %1070, 12
  %1072 = ashr i32 %1071, 2
  store i32 %1072, i32* %13, align 4
  %1073 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %1074 = load i32, i32* %11, align 4
  switch i32 %1074, label %1093 [
    i32 0, label %1075
    i32 1, label %1084
  ]

1075:                                             ; preds = %1066
  %1076 = load i32, i32* %13, align 4
  switch i32 %1076, label %1083 [
    i32 0, label %1077
    i32 1, label %1081
    i32 2, label %1082
  ]

1077:                                             ; preds = %1075
  %1078 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1079 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %1080 = call i32 @radeon_fence_process(%struct.radeon_device* %1078, i64 %1079)
  br label %1083

1081:                                             ; preds = %1075
  br label %1083

1082:                                             ; preds = %1075
  br label %1083

1083:                                             ; preds = %1075, %1082, %1081, %1077
  br label %1093

1084:                                             ; preds = %1066
  %1085 = load i32, i32* %13, align 4
  switch i32 %1085, label %1092 [
    i32 0, label %1086
    i32 1, label %1090
    i32 2, label %1091
  ]

1086:                                             ; preds = %1084
  %1087 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1088 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %1089 = call i32 @radeon_fence_process(%struct.radeon_device* %1087, i64 %1088)
  br label %1092

1090:                                             ; preds = %1084
  br label %1092

1091:                                             ; preds = %1084
  br label %1092

1092:                                             ; preds = %1084, %1091, %1090, %1086
  br label %1093

1093:                                             ; preds = %1066, %1092, %1083
  br label %1136

1094:                                             ; preds = %70
  %1095 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0))
  %1096 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1097 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1096, i32 0, i32 2
  %1098 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1097, i32 0, i32 1
  %1099 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1098, i32 0, i32 0
  %1100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1099, i32 0, i32 0
  store i32 0, i32* %1100, align 4
  store i32 1, i32* %21, align 4
  br label %1136

1101:                                             ; preds = %70
  %1102 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0))
  %1103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1103, i32 0, i32 2
  %1105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1104, i32 0, i32 1
  %1106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1105, i32 0, i32 0
  %1107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1106, i32 0, i32 0
  store i32 1, i32* %1107, align 4
  store i32 1, i32* %21, align 4
  br label %1136

1108:                                             ; preds = %70
  %1109 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0))
  br label %1136

1110:                                             ; preds = %70, %70
  %1111 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i64 0, i64 0))
  %1112 = load i32, i32* %10, align 4
  %1113 = and i32 %1112, 3
  %1114 = ashr i32 %1113, 0
  store i32 %1114, i32* %11, align 4
  %1115 = load i32, i32* %10, align 4
  %1116 = and i32 %1115, 12
  %1117 = ashr i32 %1116, 2
  store i32 %1117, i32* %13, align 4
  %1118 = load i32, i32* %11, align 4
  switch i32 %1118, label %1131 [
    i32 0, label %1119
    i32 1, label %1125
  ]

1119:                                             ; preds = %1110
  %1120 = load i32, i32* %13, align 4
  switch i32 %1120, label %1124 [
    i32 0, label %1121
    i32 1, label %1122
    i32 2, label %1123
  ]

1121:                                             ; preds = %1119
  store i32 1, i32* %17, align 4
  br label %1124

1122:                                             ; preds = %1119
  store i32 1, i32* %17, align 4
  br label %1124

1123:                                             ; preds = %1119
  store i32 1, i32* %17, align 4
  br label %1124

1124:                                             ; preds = %1119, %1123, %1122, %1121
  br label %1131

1125:                                             ; preds = %1110
  %1126 = load i32, i32* %13, align 4
  switch i32 %1126, label %1130 [
    i32 0, label %1127
    i32 1, label %1128
    i32 2, label %1129
  ]

1127:                                             ; preds = %1125
  store i32 1, i32* %17, align 4
  br label %1130

1128:                                             ; preds = %1125
  store i32 1, i32* %17, align 4
  br label %1130

1129:                                             ; preds = %1125
  store i32 1, i32* %17, align 4
  br label %1130

1130:                                             ; preds = %1125, %1129, %1128, %1127
  br label %1131

1131:                                             ; preds = %1110, %1130, %1124
  br label %1136

1132:                                             ; preds = %70
  %1133 = load i32, i32* %8, align 4
  %1134 = load i32, i32* %9, align 4
  %1135 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %1133, i32 %1134)
  br label %1136

1136:                                             ; preds = %1132, %1131, %1108, %1101, %1094, %1093, %1065, %1049, %1033, %974, %973, %935, %934, %914, %908, %907, %624, %609, %525, %441, %357, %273, %189
  %1137 = load i32, i32* %7, align 4
  %1138 = add nsw i32 %1137, 16
  store i32 %1138, i32* %7, align 4
  %1139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1140, i32 0, i32 1
  %1142 = load i32, i32* %1141, align 4
  %1143 = load i32, i32* %7, align 4
  %1144 = and i32 %1143, %1142
  store i32 %1144, i32* %7, align 4
  %1145 = load i32, i32* @IH_RB_RPTR, align 4
  %1146 = load i32, i32* %7, align 4
  %1147 = call i32 @WREG32(i32 %1145, i32 %1146)
  br label %66

1148:                                             ; preds = %66
  %1149 = load i32, i32* %16, align 4
  %1150 = icmp ne i32 %1149, 0
  br i1 %1150, label %1151, label %1155

1151:                                             ; preds = %1148
  %1152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1152, i32 0, i32 5
  %1154 = call i32 @schedule_work(i32* %1153)
  br label %1155

1155:                                             ; preds = %1151, %1148
  %1156 = load i32, i32* %15, align 4
  %1157 = icmp ne i32 %1156, 0
  br i1 %1157, label %1158, label %1162

1158:                                             ; preds = %1155
  %1159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1159, i32 0, i32 4
  %1161 = call i32 @schedule_delayed_work(i32* %1160, i32 0)
  br label %1162

1162:                                             ; preds = %1158, %1155
  %1163 = load i32, i32* %17, align 4
  %1164 = icmp ne i32 %1163, 0
  br i1 %1164, label %1165, label %1171

1165:                                             ; preds = %1162
  %1166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1166, i32 0, i32 0
  store i32 1, i32* %1167, align 8
  %1168 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1168, i32 0, i32 3
  %1170 = call i32 @wake_up_all(i32* %1169)
  br label %1171

1171:                                             ; preds = %1165, %1162
  %1172 = load i32, i32* %21, align 4
  %1173 = icmp ne i32 %1172, 0
  br i1 %1173, label %1174, label %1181

1174:                                             ; preds = %1171
  %1175 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1175, i32 0, i32 2
  %1177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1176, i32 0, i32 1
  %1178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1177, i32 0, i32 0
  %1179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1178, i32 0, i32 1
  %1180 = call i32 @schedule_work(i32* %1179)
  br label %1181

1181:                                             ; preds = %1174, %1171
  %1182 = load i32, i32* %7, align 4
  %1183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1183, i32 0, i32 1
  %1185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1184, i32 0, i32 0
  store i32 %1182, i32* %1185, align 8
  %1186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1186, i32 0, i32 1
  %1188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1187, i32 0, i32 2
  %1189 = call i32 @atomic_set(i32* %1188, i32 0)
  %1190 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1191 = call i32 @cik_get_ih_wptr(%struct.radeon_device* %1190)
  store i32 %1191, i32* %6, align 4
  %1192 = load i32, i32* %6, align 4
  %1193 = load i32, i32* %7, align 4
  %1194 = icmp ne i32 %1192, %1193
  br i1 %1194, label %1195, label %1196

1195:                                             ; preds = %1181
  br label %47

1196:                                             ; preds = %1181
  %1197 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %1197, i32* %2, align 4
  br label %1198

1198:                                             ; preds = %1196, %53, %42
  %1199 = load i32, i32* %2, align 4
  ret i32 %1199
}

declare dso_local i32 @cik_get_ih_wptr(%struct.radeon_device*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @cik_irq_ack(%struct.radeon_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @radeon_crtc_handle_vblank(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_crtc_handle_flip(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_fence_process(%struct.radeon_device*, i64) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @cik_vm_decode_fault(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
