; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__, %struct.TYPE_13__, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"evergreen_irq_process start: rptr %d, wptr %d\0A\00", align 1
@LB_D1_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vblank\00", align 1
@LB_D1_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"vline\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unhandled interrupt: %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"IH: D%d %s - IH event w/o asserted irq bit?\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"IH: D%d %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"IH: D%d flip\0A\00", align 1
@radeon_use_pflipirq = common dso_local global i32 0, align 4
@DC_HPD1_INTERRUPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"HPD\00", align 1
@DC_HPD1_RX_INTERRUPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"HPD_RX\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"IH: IH event w/o asserted irq bit?\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"IH: %s%d\0A\00", align 1
@AFMT_AZ_FORMAT_WTRIG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"IH: HDMI%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"SRBM_READ_ERROR: 0x%x\0A\00", align 1
@SRBM_READ_ERROR = common dso_local global i32 0, align 4
@SRBM_INT_ACK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"IH: UVD int: 0x%08x\0A\00", align 1
@R600_RING_TYPE_UVD_INDEX = common dso_local global i32 0, align 4
@VM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"GPU fault detected: %d 0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"IH: CP int: 0x%08x\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"IH: CP EOP\0A\00", align 1
@CHIP_CAYMAN = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"IH: DMA trap\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [25 x i8] c"IH: thermal low to high\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"IH: thermal high to low\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"IH: GUI idle\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"IH: DMA1 trap\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i32 0, align 4
@IH_RB_RPTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_irq_process(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
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
  %21 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %4, align 8
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %5, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %1
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %2, align 4
  br label %448

46:                                               ; preds = %39
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = call i32 @evergreen_get_ih_wptr(%struct.radeon_device* %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %445, %46
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = call i64 @atomic_xchg(i32* %52, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @IRQ_NONE, align 4
  store i32 %56, i32* %2, align 4
  br label %448

57:                                               ; preds = %49
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = call i32 (...) @rmb()
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = call i32 @evergreen_irq_ack(%struct.radeon_device* %66)
  br label %68

68:                                               ; preds = %382, %57
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %394

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = sdiv i32 %73, 4
  store i32 %74, i32* %14, align 4
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = and i32 %83, 255
  store i32 %84, i32* %12, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  %95 = and i32 %94, 268435455
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %12, align 4
  switch i32 %96, label %378 [
    i32 1, label %97
    i32 2, label %97
    i32 3, label %97
    i32 4, label %97
    i32 5, label %97
    i32 6, label %97
    i32 8, label %178
    i32 10, label %178
    i32 12, label %178
    i32 14, label %178
    i32 16, label %178
    i32 18, label %178
    i32 42, label %193
    i32 44, label %235
    i32 96, label %266
    i32 124, label %272
    i32 146, label %278
    i32 147, label %278
    i32 176, label %312
    i32 177, label %312
    i32 178, label %312
    i32 181, label %318
    i32 224, label %345
    i32 230, label %350
    i32 231, label %357
    i32 233, label %364
    i32 244, label %366
  ]

97:                                               ; preds = %72, %72, %72, %72, %72, %72
  %98 = load i32, i32* %12, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %141

102:                                              ; preds = %97
  %103 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  store i32 %103, i32* %9, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %102
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @drm_handle_vblank(i32 %116, i32 %117)
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = call i32 @wake_up(i32* %124)
  br label %126

126:                                              ; preds = %113, %102
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = call i32 @atomic_read(i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %126
  br label %151

141:                                              ; preds = %97
  %142 = load i32, i32* %13, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  store i32 %145, i32* %9, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %150

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32 %148)
  br label %382

150:                                              ; preds = %144
  br label %151

151:                                              ; preds = %150, %140
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %9, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  %163 = load i8*, i8** %21, align 8
  %164 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %162, i8* %163)
  br label %165

165:                                              ; preds = %160, %151
  %166 = load i32, i32* %9, align 4
  %167 = xor i32 %166, -1
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %167
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  %176 = load i8*, i8** %21, align 8
  %177 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %175, i8* %176)
  br label %382

178:                                              ; preds = %72, %72, %72, %72, %72, %72
  %179 = load i32, i32* %12, align 4
  %180 = sub nsw i32 %179, 8
  %181 = ashr i32 %180, 1
  %182 = add nsw i32 %181, 1
  %183 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @radeon_use_pflipirq, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sub nsw i32 %188, 8
  %190 = ashr i32 %189, 1
  %191 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %187, i32 %190)
  br label %192

192:                                              ; preds = %186, %178
  br label %382

193:                                              ; preds = %72
  %194 = load i32, i32* %13, align 4
  %195 = icmp sle i32 %194, 5
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  store i32 %198, i32* %9, align 4
  store i32 1, i32* %15, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %21, align 8
  br label %211

199:                                              ; preds = %193
  %200 = load i32, i32* %13, align 4
  %201 = icmp sle i32 %200, 11
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i32, i32* %13, align 4
  %204 = sub nsw i32 %203, 6
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* @DC_HPD1_RX_INTERRUPT, align 4
  store i32 %205, i32* %9, align 4
  store i32 1, i32* %17, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %21, align 8
  br label %210

206:                                              ; preds = %199
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %207, i32 %208)
  br label %382

210:                                              ; preds = %202
  br label %211

211:                                              ; preds = %210, %196
  %212 = load i32*, i32** %4, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %9, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %211
  %221 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %222

222:                                              ; preds = %220, %211
  %223 = load i32, i32* %9, align 4
  %224 = xor i32 %223, -1
  %225 = load i32*, i32** %4, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, %224
  store i32 %230, i32* %228, align 4
  %231 = load i8*, i8** %21, align 8
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  %234 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %231, i32 %233)
  br label %382

235:                                              ; preds = %72
  %236 = load i32, i32* %13, align 4
  store i32 %236, i32* %8, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %235
  %246 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %235
  %248 = load i32, i32* %8, align 4
  %249 = icmp sgt i32 %248, 5
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* %13, align 4
  %253 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %251, i32 %252)
  br label %382

254:                                              ; preds = %247
  %255 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %256 = xor i32 %255, -1
  %257 = load i32*, i32** %5, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, %256
  store i32 %262, i32* %260, align 4
  store i32 1, i32* %16, align 4
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 %263, 1
  %265 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %264)
  br label %382

266:                                              ; preds = %72
  %267 = load i32, i32* @SRBM_READ_ERROR, align 4
  %268 = call i32 @RREG32(i32 %267)
  %269 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* @SRBM_INT_ACK, align 4
  %271 = call i32 @WREG32(i32 %270, i32 1)
  br label %382

272:                                              ; preds = %72
  %273 = load i32, i32* %13, align 4
  %274 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %273)
  %275 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %276 = load i32, i32* @R600_RING_TYPE_UVD_INDEX, align 4
  %277 = call i32 @radeon_fence_process(%struct.radeon_device* %275, i32 %276)
  br label %382

278:                                              ; preds = %72, %72
  %279 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_ADDR, align 4
  %280 = call i32 @RREG32(i32 %279)
  store i32 %280, i32* %20, align 4
  %281 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %282 = call i32 @RREG32(i32 %281)
  store i32 %282, i32* %19, align 4
  %283 = load i32, i32* @VM_CONTEXT1_CNTL2, align 4
  %284 = call i32 @WREG32_P(i32 %283, i32 1, i32 -2)
  %285 = load i32, i32* %20, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %278
  %288 = load i32, i32* %19, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %382

291:                                              ; preds = %287, %278
  %292 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %293 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* %13, align 4
  %297 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %294, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %295, i32 %296)
  %298 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %299 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %20, align 4
  %302 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %300, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %301)
  %303 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %304 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %19, align 4
  %307 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %305, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i32 %306)
  %308 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %309 = load i32, i32* %19, align 4
  %310 = load i32, i32* %20, align 4
  %311 = call i32 @cayman_vm_decode_fault(%struct.radeon_device* %308, i32 %309, i32 %310)
  br label %382

312:                                              ; preds = %72, %72, %72
  %313 = load i32, i32* %13, align 4
  %314 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %313)
  %315 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %316 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %317 = call i32 @radeon_fence_process(%struct.radeon_device* %315, i32 %316)
  br label %382

318:                                              ; preds = %72
  %319 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %320 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %321 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @CHIP_CAYMAN, align 4
  %324 = icmp sge i32 %322, %323
  br i1 %324, label %325, label %340

325:                                              ; preds = %318
  %326 = load i32, i32* %13, align 4
  switch i32 %326, label %339 [
    i32 0, label %327
    i32 1, label %331
    i32 2, label %335
  ]

327:                                              ; preds = %325
  %328 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %329 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %330 = call i32 @radeon_fence_process(%struct.radeon_device* %328, i32 %329)
  br label %339

331:                                              ; preds = %325
  %332 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %333 = load i32, i32* @CAYMAN_RING_TYPE_CP1_INDEX, align 4
  %334 = call i32 @radeon_fence_process(%struct.radeon_device* %332, i32 %333)
  br label %339

335:                                              ; preds = %325
  %336 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %337 = load i32, i32* @CAYMAN_RING_TYPE_CP2_INDEX, align 4
  %338 = call i32 @radeon_fence_process(%struct.radeon_device* %336, i32 %337)
  br label %339

339:                                              ; preds = %325, %335, %331, %327
  br label %344

340:                                              ; preds = %318
  %341 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %342 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %343 = call i32 @radeon_fence_process(%struct.radeon_device* %341, i32 %342)
  br label %344

344:                                              ; preds = %340, %339
  br label %382

345:                                              ; preds = %72
  %346 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %347 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %348 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %349 = call i32 @radeon_fence_process(%struct.radeon_device* %347, i32 %348)
  br label %382

350:                                              ; preds = %72
  %351 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %352 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %353 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 0
  store i32 0, i32* %356, align 4
  store i32 1, i32* %18, align 4
  br label %382

357:                                              ; preds = %72
  %358 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %359 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %360 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 0
  store i32 1, i32* %363, align 4
  store i32 1, i32* %18, align 4
  br label %382

364:                                              ; preds = %72
  %365 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %382

366:                                              ; preds = %72
  %367 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %368 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @CHIP_CAYMAN, align 4
  %371 = icmp sge i32 %369, %370
  br i1 %371, label %372, label %377

372:                                              ; preds = %366
  %373 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %374 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %375 = load i32, i32* @CAYMAN_RING_TYPE_DMA1_INDEX, align 4
  %376 = call i32 @radeon_fence_process(%struct.radeon_device* %374, i32 %375)
  br label %377

377:                                              ; preds = %372, %366
  br label %382

378:                                              ; preds = %72
  %379 = load i32, i32* %12, align 4
  %380 = load i32, i32* %13, align 4
  %381 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %379, i32 %380)
  br label %382

382:                                              ; preds = %378, %377, %364, %357, %350, %345, %344, %312, %291, %290, %272, %266, %254, %250, %222, %206, %192, %165, %146
  %383 = load i32, i32* %11, align 4
  %384 = add nsw i32 %383, 16
  store i32 %384, i32* %11, align 4
  %385 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %386 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %11, align 4
  %390 = and i32 %389, %388
  store i32 %390, i32* %11, align 4
  %391 = load i32, i32* @IH_RB_RPTR, align 4
  %392 = load i32, i32* %11, align 4
  %393 = call i32 @WREG32(i32 %391, i32 %392)
  br label %68

394:                                              ; preds = %68
  %395 = load i32, i32* %17, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %394
  %398 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %399 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %398, i32 0, i32 4
  %400 = call i32 @schedule_work(i32* %399)
  br label %401

401:                                              ; preds = %397, %394
  %402 = load i32, i32* %15, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %401
  %405 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %406 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %405, i32 0, i32 3
  %407 = call i32 @schedule_delayed_work(i32* %406, i32 0)
  br label %408

408:                                              ; preds = %404, %401
  %409 = load i32, i32* %16, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %408
  %412 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %413 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %412, i32 0, i32 2
  %414 = call i32 @schedule_work(i32* %413)
  br label %415

415:                                              ; preds = %411, %408
  %416 = load i32, i32* %18, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %431

418:                                              ; preds = %415
  %419 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %420 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %418
  %425 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %426 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 1
  %430 = call i32 @schedule_work(i32* %429)
  br label %431

431:                                              ; preds = %424, %418, %415
  %432 = load i32, i32* %11, align 4
  %433 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %434 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 0
  store i32 %432, i32* %435, align 8
  %436 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %437 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i32 0, i32 2
  %439 = call i32 @atomic_set(i32* %438, i32 0)
  %440 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %441 = call i32 @evergreen_get_ih_wptr(%struct.radeon_device* %440)
  store i32 %441, i32* %10, align 4
  %442 = load i32, i32* %10, align 4
  %443 = load i32, i32* %11, align 4
  %444 = icmp ne i32 %442, %443
  br i1 %444, label %445, label %446

445:                                              ; preds = %431
  br label %49

446:                                              ; preds = %431
  %447 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %447, i32* %2, align 4
  br label %448

448:                                              ; preds = %446, %55, %44
  %449 = load i32, i32* %2, align 4
  ret i32 %449
}

declare dso_local i32 @evergreen_get_ih_wptr(%struct.radeon_device*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @evergreen_irq_ack(%struct.radeon_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @radeon_crtc_handle_vblank(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_crtc_handle_flip(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_fence_process(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @cayman_vm_decode_fault(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
