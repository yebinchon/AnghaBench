; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__, %struct.TYPE_14__, i32, i32, %struct.TYPE_13__, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32*, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IH_RB_WPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"r600_irq_process start: rptr %d, wptr %d\0A\00", align 1
@LB_D1_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"IH: D1 vblank - IH event w/o asserted irq bit?\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"IH: D1 vblank\0A\00", align 1
@LB_D1_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"IH: D1 vline - IH event w/o asserted irq bit?\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"IH: D1 vline\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unhandled interrupt: %d %d\0A\00", align 1
@LB_D2_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"IH: D2 vblank - IH event w/o asserted irq bit?\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"IH: D2 vblank\0A\00", align 1
@LB_D2_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"IH: D2 vline - IH event w/o asserted irq bit?\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"IH: D2 vline\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"IH: D1 flip\0A\00", align 1
@radeon_use_pflipirq = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"IH: D2 flip\0A\00", align 1
@DC_HPD1_INTERRUPT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"IH: HPD1 - IH event w/o asserted irq bit?\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"IH: HPD1\0A\00", align 1
@DC_HPD2_INTERRUPT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"IH: HPD2 - IH event w/o asserted irq bit?\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"IH: HPD2\0A\00", align 1
@DC_HPD3_INTERRUPT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"IH: HPD3 - IH event w/o asserted irq bit?\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"IH: HPD3\0A\00", align 1
@DC_HPD4_INTERRUPT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [43 x i8] c"IH: HPD4 - IH event w/o asserted irq bit?\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"IH: HPD4\0A\00", align 1
@DC_HPD5_INTERRUPT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [43 x i8] c"IH: HPD5 - IH event w/o asserted irq bit?\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"IH: HPD5\0A\00", align 1
@DC_HPD6_INTERRUPT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [43 x i8] c"IH: HPD6 - IH event w/o asserted irq bit?\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"IH: HPD6\0A\00", align 1
@HDMI0_AZ_FORMAT_WTRIG = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [44 x i8] c"IH: HDMI0 - IH event w/o asserted irq bit?\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"IH: HDMI0\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"IH: HDMI1 - IH event w/o asserted irq bit?\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"IH: HDMI1\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"IH: UVD int: 0x%08x\0A\00", align 1
@R600_RING_TYPE_UVD_INDEX = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [20 x i8] c"IH: CP int: 0x%08x\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"IH: CP EOP\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"IH: DMA trap\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [25 x i8] c"IH: thermal low to high\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"IH: thermal high to low\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"IH: GUI idle\0A\00", align 1
@IH_RB_RPTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_irq_process(%struct.radeon_device* %0) #0 {
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
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %2, align 4
  br label %566

24:                                               ; preds = %17
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @IH_RB_WPTR, align 4
  %31 = call i32 @RREG32(i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = call i32 @r600_get_ih_wptr(%struct.radeon_device* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %563, %32
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = call i64 @atomic_xchg(i32* %38, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %2, align 4
  br label %566

43:                                               ; preds = %35
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = call i32 (...) @rmb()
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = call i32 @r600_irq_ack(%struct.radeon_device* %52)
  br label %54

54:                                               ; preds = %507, %43
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %519

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = sdiv i32 %59, 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = and i32 %69, 255
  store i32 %70, i32* %6, align 4
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = and i32 %80, 268435455
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  switch i32 %82, label %503 [
    i32 1, label %83
    i32 5, label %167
    i32 9, label %251
    i32 11, label %259
    i32 19, label %267
    i32 21, label %412
    i32 124, label %465
    i32 176, label %471
    i32 177, label %471
    i32 178, label %471
    i32 181, label %477
    i32 224, label %482
    i32 230, label %487
    i32 231, label %494
    i32 233, label %501
  ]

83:                                               ; preds = %58
  %84 = load i32, i32* %7, align 4
  switch i32 %84, label %162 [
    i32 0, label %85
    i32 1, label %139
  ]

85:                                               ; preds = %83
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %85
  %96 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %85
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %97
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @drm_handle_vblank(i32 %108, i32 0)
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = call i32 @wake_up(i32* %115)
  br label %117

117:                                              ; preds = %105, %97
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = call i32 @atomic_read(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %126, i32 0)
  br label %128

128:                                              ; preds = %125, %117
  %129 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %130
  store i32 %137, i32* %135, align 8
  %138 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %166

139:                                              ; preds = %83
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %139
  %150 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %139
  %152 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %153
  store i32 %160, i32* %158, align 8
  %161 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %166

162:                                              ; preds = %83
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %151, %128
  br label %507

167:                                              ; preds = %58
  %168 = load i32, i32* %7, align 4
  switch i32 %168, label %246 [
    i32 0, label %169
    i32 1, label %223
  ]

169:                                              ; preds = %167
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %169
  %180 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %169
  %182 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %181
  %190 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %191 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @drm_handle_vblank(i32 %192, i32 1)
  %194 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  %200 = call i32 @wake_up(i32* %199)
  br label %201

201:                                              ; preds = %189, %181
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = call i32 @atomic_read(i32* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %211 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %210, i32 1)
  br label %212

212:                                              ; preds = %209, %201
  %213 = load i32, i32* @LB_D2_VBLANK_INTERRUPT, align 4
  %214 = xor i32 %213, -1
  %215 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %220, %214
  store i32 %221, i32* %219, align 8
  %222 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %250

223:                                              ; preds = %167
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %223
  %234 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %223
  %236 = load i32, i32* @LB_D2_VLINE_INTERRUPT, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %239 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %237
  store i32 %244, i32* %242, align 8
  %245 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %250

246:                                              ; preds = %167
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %7, align 4
  %249 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %235, %212
  br label %507

251:                                              ; preds = %58
  %252 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %253 = load i32, i32* @radeon_use_pflipirq, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %257 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %256, i32 0)
  br label %258

258:                                              ; preds = %255, %251
  br label %507

259:                                              ; preds = %58
  %260 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %261 = load i32, i32* @radeon_use_pflipirq, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %265 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %264, i32 1)
  br label %266

266:                                              ; preds = %263, %259
  br label %507

267:                                              ; preds = %58
  %268 = load i32, i32* %7, align 4
  switch i32 %268, label %407 [
    i32 0, label %269
    i32 1, label %292
    i32 4, label %315
    i32 5, label %338
    i32 10, label %361
    i32 12, label %384
  ]

269:                                              ; preds = %267
  %270 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %271 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %269
  %280 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %281

281:                                              ; preds = %279, %269
  %282 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %285 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, %283
  store i32 %290, i32* %288, align 8
  store i32 1, i32* %9, align 4
  %291 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %411

292:                                              ; preds = %267
  %293 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %294 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %292
  %303 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  br label %304

304:                                              ; preds = %302, %292
  %305 = load i32, i32* @DC_HPD2_INTERRUPT, align 4
  %306 = xor i32 %305, -1
  %307 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %308 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, %306
  store i32 %313, i32* %311, align 8
  store i32 1, i32* %9, align 4
  %314 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %411

315:                                              ; preds = %267
  %316 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %317 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %316, i32 0, i32 4
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %327, label %325

325:                                              ; preds = %315
  %326 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  br label %327

327:                                              ; preds = %325, %315
  %328 = load i32, i32* @DC_HPD3_INTERRUPT, align 4
  %329 = xor i32 %328, -1
  %330 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %331 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %330, i32 0, i32 4
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, %329
  store i32 %336, i32* %334, align 4
  store i32 1, i32* %9, align 4
  %337 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %411

338:                                              ; preds = %267
  %339 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %340 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %350, label %348

348:                                              ; preds = %338
  %349 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  br label %350

350:                                              ; preds = %348, %338
  %351 = load i32, i32* @DC_HPD4_INTERRUPT, align 4
  %352 = xor i32 %351, -1
  %353 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %354 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = and i32 %358, %352
  store i32 %359, i32* %357, align 4
  store i32 1, i32* %9, align 4
  %360 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %411

361:                                              ; preds = %267
  %362 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %363 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %362, i32 0, i32 4
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %361
  %372 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0))
  br label %373

373:                                              ; preds = %371, %361
  %374 = load i32, i32* @DC_HPD5_INTERRUPT, align 4
  %375 = xor i32 %374, -1
  %376 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %377 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = and i32 %381, %375
  store i32 %382, i32* %380, align 8
  store i32 1, i32* %9, align 4
  %383 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  br label %411

384:                                              ; preds = %267
  %385 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %386 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %385, i32 0, i32 4
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %384
  %395 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0))
  br label %396

396:                                              ; preds = %394, %384
  %397 = load i32, i32* @DC_HPD6_INTERRUPT, align 4
  %398 = xor i32 %397, -1
  %399 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %400 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %399, i32 0, i32 4
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = and i32 %404, %398
  store i32 %405, i32* %403, align 8
  store i32 1, i32* %9, align 4
  %406 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %411

407:                                              ; preds = %267
  %408 = load i32, i32* %6, align 4
  %409 = load i32, i32* %7, align 4
  %410 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %408, i32 %409)
  br label %411

411:                                              ; preds = %407, %396, %373, %350, %327, %304, %281
  br label %507

412:                                              ; preds = %58
  %413 = load i32, i32* %7, align 4
  switch i32 %413, label %460 [
    i32 4, label %414
    i32 5, label %437
  ]

414:                                              ; preds = %412
  %415 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %416 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %415, i32 0, i32 4
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %414
  %425 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0))
  br label %426

426:                                              ; preds = %424, %414
  %427 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG, align 4
  %428 = xor i32 %427, -1
  %429 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %430 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %429, i32 0, i32 4
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = and i32 %434, %428
  store i32 %435, i32* %433, align 4
  store i32 1, i32* %10, align 4
  %436 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  br label %464

437:                                              ; preds = %412
  %438 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %439 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %438, i32 0, i32 4
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %449, label %447

447:                                              ; preds = %437
  %448 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i64 0, i64 0))
  br label %449

449:                                              ; preds = %447, %437
  %450 = load i32, i32* @HDMI0_AZ_FORMAT_WTRIG, align 4
  %451 = xor i32 %450, -1
  %452 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %453 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %452, i32 0, i32 4
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = and i32 %457, %451
  store i32 %458, i32* %456, align 8
  store i32 1, i32* %10, align 4
  %459 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  br label %464

460:                                              ; preds = %412
  %461 = load i32, i32* %6, align 4
  %462 = load i32, i32* %7, align 4
  %463 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %461, i32 %462)
  br label %464

464:                                              ; preds = %460, %449, %426
  br label %507

465:                                              ; preds = %58
  %466 = load i32, i32* %7, align 4
  %467 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %466)
  %468 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %469 = load i32, i32* @R600_RING_TYPE_UVD_INDEX, align 4
  %470 = call i32 @radeon_fence_process(%struct.radeon_device* %468, i32 %469)
  br label %507

471:                                              ; preds = %58, %58, %58
  %472 = load i32, i32* %7, align 4
  %473 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 %472)
  %474 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %475 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %476 = call i32 @radeon_fence_process(%struct.radeon_device* %474, i32 %475)
  br label %507

477:                                              ; preds = %58
  %478 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0))
  %479 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %480 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %481 = call i32 @radeon_fence_process(%struct.radeon_device* %479, i32 %480)
  br label %507

482:                                              ; preds = %58
  %483 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  %484 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %485 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %486 = call i32 @radeon_fence_process(%struct.radeon_device* %484, i32 %485)
  br label %507

487:                                              ; preds = %58
  %488 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  %489 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %490 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %492, i32 0, i32 0
  store i32 0, i32* %493, align 4
  store i32 1, i32* %11, align 4
  br label %507

494:                                              ; preds = %58
  %495 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0))
  %496 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %497 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i32 0, i32 0
  store i32 1, i32* %500, align 4
  store i32 1, i32* %11, align 4
  br label %507

501:                                              ; preds = %58
  %502 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  br label %507

503:                                              ; preds = %58
  %504 = load i32, i32* %6, align 4
  %505 = load i32, i32* %7, align 4
  %506 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %504, i32 %505)
  br label %507

507:                                              ; preds = %503, %501, %494, %487, %482, %477, %471, %465, %464, %411, %266, %258, %250, %166
  %508 = load i32, i32* %5, align 4
  %509 = add nsw i32 %508, 16
  store i32 %509, i32* %5, align 4
  %510 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %511 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* %5, align 4
  %515 = and i32 %514, %513
  store i32 %515, i32* %5, align 4
  %516 = load i32, i32* @IH_RB_RPTR, align 4
  %517 = load i32, i32* %5, align 4
  %518 = call i32 @WREG32(i32 %516, i32 %517)
  br label %54

519:                                              ; preds = %54
  %520 = load i32, i32* %9, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %526

522:                                              ; preds = %519
  %523 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %524 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %523, i32 0, i32 3
  %525 = call i32 @schedule_delayed_work(i32* %524, i32 0)
  br label %526

526:                                              ; preds = %522, %519
  %527 = load i32, i32* %10, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %533

529:                                              ; preds = %526
  %530 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %531 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %530, i32 0, i32 2
  %532 = call i32 @schedule_work(i32* %531)
  br label %533

533:                                              ; preds = %529, %526
  %534 = load i32, i32* %11, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %549

536:                                              ; preds = %533
  %537 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %538 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %538, i32 0, i32 2
  %540 = load i64, i64* %539, align 8
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %549

542:                                              ; preds = %536
  %543 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %544 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %546, i32 0, i32 1
  %548 = call i32 @schedule_work(i32* %547)
  br label %549

549:                                              ; preds = %542, %536, %533
  %550 = load i32, i32* %5, align 4
  %551 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %552 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %552, i32 0, i32 0
  store i32 %550, i32* %553, align 8
  %554 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %555 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %555, i32 0, i32 2
  %557 = call i32 @atomic_set(i32* %556, i32 0)
  %558 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %559 = call i32 @r600_get_ih_wptr(%struct.radeon_device* %558)
  store i32 %559, i32* %4, align 4
  %560 = load i32, i32* %4, align 4
  %561 = load i32, i32* %5, align 4
  %562 = icmp ne i32 %560, %561
  br i1 %562, label %563, label %564

563:                                              ; preds = %549
  br label %35

564:                                              ; preds = %549
  %565 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %565, i32* %2, align 4
  br label %566

566:                                              ; preds = %564, %41, %22
  %567 = load i32, i32* %2, align 4
  ret i32 %567
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @r600_get_ih_wptr(%struct.radeon_device*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @r600_irq_ack(%struct.radeon_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @radeon_crtc_handle_vblank(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_crtc_handle_flip(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @radeon_fence_process(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
