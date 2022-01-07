; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_irq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_14__, %struct.TYPE_13__, i32, i32, i32, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"si_irq_process start: rptr %d, wptr %d\0A\00", align 1
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
@.str.11 = private unnamed_addr constant [23 x i8] c"SRBM_READ_ERROR: 0x%x\0A\00", align 1
@SRBM_READ_ERROR = common dso_local global i32 0, align 4
@SRBM_INT_ACK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"IH: UVD int: 0x%08x\0A\00", align 1
@R600_RING_TYPE_UVD_INDEX = common dso_local global i32 0, align 4
@VM_CONTEXT1_PROTECTION_FAULT_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"GPU fault detected: %d 0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"IH: CP EOP\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"IH: DMA trap\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"IH: thermal low to high\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"IH: thermal high to low\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"IH: GUI idle\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"IH: DMA1 trap\0A\00", align 1
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i32 0, align 4
@IH_RB_RPTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_irq_process(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
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
  %19 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %4, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %1
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %2, align 4
  br label %401

38:                                               ; preds = %31
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = call i32 @si_get_ih_wptr(%struct.radeon_device* %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %398, %38
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = call i64 @atomic_xchg(i32* %44, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @IRQ_NONE, align 4
  store i32 %48, i32* %2, align 4
  br label %401

49:                                               ; preds = %41
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = call i32 (...) @rmb()
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = call i32 @si_irq_ack(%struct.radeon_device* %58)
  br label %60

60:                                               ; preds = %342, %49
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %354

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = sdiv i32 %65, 4
  store i32 %66, i32* %13, align 4
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = and i32 %75, 255
  store i32 %76, i32* %10, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = and i32 %86, 268435455
  store i32 %87, i32* %11, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = and i32 %97, 255
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %10, align 4
  switch i32 %99, label %338 [
    i32 1, label %100
    i32 2, label %100
    i32 3, label %100
    i32 4, label %100
    i32 5, label %100
    i32 6, label %100
    i32 8, label %181
    i32 10, label %181
    i32 12, label %181
    i32 14, label %181
    i32 16, label %181
    i32 18, label %181
    i32 42, label %196
    i32 96, label %238
    i32 124, label %244
    i32 146, label %250
    i32 147, label %250
    i32 176, label %284
    i32 177, label %288
    i32 178, label %292
    i32 181, label %296
    i32 224, label %312
    i32 230, label %317
    i32 231, label %324
    i32 233, label %331
    i32 244, label %333
  ]

100:                                              ; preds = %64, %64, %64, %64, %64, %64
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %144

105:                                              ; preds = %100
  %106 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  store i32 %106, i32* %7, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %105
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @drm_handle_vblank(i32 %119, i32 %120)
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = call i32 @wake_up(i32* %127)
  br label %129

129:                                              ; preds = %116, %105
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 @atomic_read(i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %129
  br label %154

144:                                              ; preds = %100
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  store i32 %148, i32* %7, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %153

149:                                              ; preds = %144
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %151)
  br label %342

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153, %143
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %7, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  %166 = load i8*, i8** %19, align 8
  %167 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %165, i8* %166)
  br label %168

168:                                              ; preds = %163, %154
  %169 = load i32, i32* %7, align 4
  %170 = xor i32 %169, -1
  %171 = load i32*, i32** %4, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %170
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i8*, i8** %19, align 8
  %180 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %178, i8* %179)
  br label %342

181:                                              ; preds = %64, %64, %64, %64, %64, %64
  %182 = load i32, i32* %10, align 4
  %183 = sub nsw i32 %182, 8
  %184 = ashr i32 %183, 1
  %185 = add nsw i32 %184, 1
  %186 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @radeon_use_pflipirq, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %181
  %190 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sub nsw i32 %191, 8
  %193 = ashr i32 %192, 1
  %194 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %190, i32 %193)
  br label %195

195:                                              ; preds = %189, %181
  br label %342

196:                                              ; preds = %64
  %197 = load i32, i32* %11, align 4
  %198 = icmp sle i32 %197, 5
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  store i32 %201, i32* %7, align 4
  store i32 1, i32* %14, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  br label %214

202:                                              ; preds = %196
  %203 = load i32, i32* %11, align 4
  %204 = icmp sle i32 %203, 11
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %206, 6
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* @DC_HPD1_RX_INTERRUPT, align 4
  store i32 %208, i32* %7, align 4
  store i32 1, i32* %15, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  br label %213

209:                                              ; preds = %202
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %11, align 4
  %212 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %210, i32 %211)
  br label %342

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %199
  %215 = load i32*, i32** %4, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %7, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %214
  %224 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %214
  %226 = load i32, i32* %7, align 4
  %227 = xor i32 %226, -1
  %228 = load i32*, i32** %4, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, %227
  store i32 %233, i32* %231, align 4
  %234 = load i8*, i8** %19, align 8
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  %237 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %234, i32 %236)
  br label %342

238:                                              ; preds = %64
  %239 = load i32, i32* @SRBM_READ_ERROR, align 4
  %240 = call i32 @RREG32(i32 %239)
  %241 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* @SRBM_INT_ACK, align 4
  %243 = call i32 @WREG32(i32 %242, i32 1)
  br label %342

244:                                              ; preds = %64
  %245 = load i32, i32* %11, align 4
  %246 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %245)
  %247 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %248 = load i32, i32* @R600_RING_TYPE_UVD_INDEX, align 4
  %249 = call i32 @radeon_fence_process(%struct.radeon_device* %247, i32 %248)
  br label %342

250:                                              ; preds = %64, %64
  %251 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_ADDR, align 4
  %252 = call i32 @RREG32(i32 %251)
  store i32 %252, i32* %18, align 4
  %253 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %254 = call i32 @RREG32(i32 %253)
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* @VM_CONTEXT1_CNTL2, align 4
  %256 = call i32 @WREG32_P(i32 %255, i32 1, i32 -2)
  %257 = load i32, i32* %18, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %250
  %260 = load i32, i32* %17, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %342

263:                                              ; preds = %259, %250
  %264 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %265 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %11, align 4
  %269 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %266, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %267, i32 %268)
  %270 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %271 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %18, align 4
  %274 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %272, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %273)
  %275 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %276 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %17, align 4
  %279 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %277, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %278)
  %280 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %18, align 4
  %283 = call i32 @si_vm_decode_fault(%struct.radeon_device* %280, i32 %281, i32 %282)
  br label %342

284:                                              ; preds = %64
  %285 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %286 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %287 = call i32 @radeon_fence_process(%struct.radeon_device* %285, i32 %286)
  br label %342

288:                                              ; preds = %64
  %289 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %290 = load i32, i32* @CAYMAN_RING_TYPE_CP1_INDEX, align 4
  %291 = call i32 @radeon_fence_process(%struct.radeon_device* %289, i32 %290)
  br label %342

292:                                              ; preds = %64
  %293 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %294 = load i32, i32* @CAYMAN_RING_TYPE_CP2_INDEX, align 4
  %295 = call i32 @radeon_fence_process(%struct.radeon_device* %293, i32 %294)
  br label %342

296:                                              ; preds = %64
  %297 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %298 = load i32, i32* %12, align 4
  switch i32 %298, label %311 [
    i32 0, label %299
    i32 1, label %303
    i32 2, label %307
  ]

299:                                              ; preds = %296
  %300 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %301 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %302 = call i32 @radeon_fence_process(%struct.radeon_device* %300, i32 %301)
  br label %311

303:                                              ; preds = %296
  %304 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %305 = load i32, i32* @CAYMAN_RING_TYPE_CP1_INDEX, align 4
  %306 = call i32 @radeon_fence_process(%struct.radeon_device* %304, i32 %305)
  br label %311

307:                                              ; preds = %296
  %308 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %309 = load i32, i32* @CAYMAN_RING_TYPE_CP2_INDEX, align 4
  %310 = call i32 @radeon_fence_process(%struct.radeon_device* %308, i32 %309)
  br label %311

311:                                              ; preds = %296, %307, %303, %299
  br label %342

312:                                              ; preds = %64
  %313 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %314 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %315 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %316 = call i32 @radeon_fence_process(%struct.radeon_device* %314, i32 %315)
  br label %342

317:                                              ; preds = %64
  %318 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %319 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %320 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 0
  store i32 0, i32* %323, align 4
  store i32 1, i32* %16, align 4
  br label %342

324:                                              ; preds = %64
  %325 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %326 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %327 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  store i32 1, i32* %330, align 4
  store i32 1, i32* %16, align 4
  br label %342

331:                                              ; preds = %64
  %332 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  br label %342

333:                                              ; preds = %64
  %334 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %335 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %336 = load i32, i32* @CAYMAN_RING_TYPE_DMA1_INDEX, align 4
  %337 = call i32 @radeon_fence_process(%struct.radeon_device* %335, i32 %336)
  br label %342

338:                                              ; preds = %64
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %11, align 4
  %341 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %338, %333, %331, %324, %317, %312, %311, %292, %288, %284, %263, %262, %244, %238, %225, %209, %195, %168, %149
  %343 = load i32, i32* %9, align 4
  %344 = add nsw i32 %343, 16
  store i32 %344, i32* %9, align 4
  %345 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %346 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %9, align 4
  %350 = and i32 %349, %348
  store i32 %350, i32* %9, align 4
  %351 = load i32, i32* @IH_RB_RPTR, align 4
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @WREG32(i32 %351, i32 %352)
  br label %60

354:                                              ; preds = %60
  %355 = load i32, i32* %15, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %354
  %358 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %359 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %358, i32 0, i32 3
  %360 = call i32 @schedule_work(i32* %359)
  br label %361

361:                                              ; preds = %357, %354
  %362 = load i32, i32* %14, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %361
  %365 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %366 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %365, i32 0, i32 2
  %367 = call i32 @schedule_delayed_work(i32* %366, i32 0)
  br label %368

368:                                              ; preds = %364, %361
  %369 = load i32, i32* %16, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %384

371:                                              ; preds = %368
  %372 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %373 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %371
  %378 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %379 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 1
  %383 = call i32 @schedule_work(i32* %382)
  br label %384

384:                                              ; preds = %377, %371, %368
  %385 = load i32, i32* %9, align 4
  %386 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %387 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 0
  store i32 %385, i32* %388, align 8
  %389 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %390 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 2
  %392 = call i32 @atomic_set(i32* %391, i32 0)
  %393 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %394 = call i32 @si_get_ih_wptr(%struct.radeon_device* %393)
  store i32 %394, i32* %8, align 4
  %395 = load i32, i32* %8, align 4
  %396 = load i32, i32* %9, align 4
  %397 = icmp ne i32 %395, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %384
  br label %41

399:                                              ; preds = %384
  %400 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %400, i32* %2, align 4
  br label %401

401:                                              ; preds = %399, %47, %36
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local i32 @si_get_ih_wptr(%struct.radeon_device*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @si_irq_ack(%struct.radeon_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @radeon_crtc_handle_vblank(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_crtc_handle_flip(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_fence_process(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @si_vm_decode_fault(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
