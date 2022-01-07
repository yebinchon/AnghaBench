; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_irq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32*, i32, i64* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"HPD1\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HPD2\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HDMI0\0A\00", align 1
@RADEON_BUS_CNTL = common dso_local global i32 0, align 4
@RS600_MSI_REARM = common dso_local global i32 0, align 4
@RADEON_MSI_REARM_EN = common dso_local global i32 0, align 4
@RV370_MSI_REARM_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs600_irq_process(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call i32 @rs600_irq_ack(%struct.radeon_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %2, align 4
  br label %222

30:                                               ; preds = %20, %12, %1
  br label %31

31:                                               ; preds = %175, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %31
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %42, %34, %31
  %51 = phi i1 [ true, %34 ], [ true, %31 ], [ %49, %42 ]
  br i1 %51, label %52, label %178

52:                                               ; preds = %50
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @G_000044_SW_INT(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %59 = call i32 @radeon_fence_process(%struct.radeon_device* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @G_007EDC_LB_D1_VBLANK_INTERRUPT(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %60
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %69
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @drm_handle_vblank(i32 %80, i32 0)
  %82 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = call i32 @wake_up(i32* %87)
  br label %89

89:                                               ; preds = %77, %69
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = call i64 @atomic_read(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %98, i32 0)
  br label %100

100:                                              ; preds = %97, %89
  br label %101

101:                                              ; preds = %100, %60
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @G_007EDC_LB_D2_VBLANK_INTERRUPT(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %101
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %110
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @drm_handle_vblank(i32 %121, i32 1)
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = call i32 @wake_up(i32* %128)
  br label %130

130:                                              ; preds = %118, %110
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = call i64 @atomic_read(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = call i32 @radeon_crtc_handle_vblank(%struct.radeon_device* %139, i32 1)
  br label %141

141:                                              ; preds = %138, %130
  br label %142

142:                                              ; preds = %141, %101
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @G_007EDC_DC_HOT_PLUG_DETECT1_INTERRUPT(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  store i32 1, i32* %6, align 4
  %152 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %142
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @G_007EDC_DC_HOT_PLUG_DETECT2_INTERRUPT(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %153
  store i32 1, i32* %6, align 4
  %163 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %153
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @G_007404_HDMI0_AZ_FORMAT_WTRIG(i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  store i32 1, i32* %7, align 4
  %174 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %164
  %176 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %177 = call i32 @rs600_irq_ack(%struct.radeon_device* %176)
  store i32 %177, i32* %4, align 4
  br label %31

178:                                              ; preds = %50
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %182, i32 0, i32 3
  %184 = call i32 @schedule_delayed_work(i32* %183, i32 0)
  br label %185

185:                                              ; preds = %181, %178
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 2
  %191 = call i32 @schedule_work(i32* %190)
  br label %192

192:                                              ; preds = %188, %185
  %193 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %220

197:                                              ; preds = %192
  %198 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  switch i32 %200, label %215 [
    i32 130, label %201
    i32 129, label %201
    i32 128, label %201
  ]

201:                                              ; preds = %197, %197, %197
  %202 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %203 = call i32 @RREG32(i32 %202)
  %204 = load i32, i32* @RS600_MSI_REARM, align 4
  %205 = xor i32 %204, -1
  %206 = and i32 %203, %205
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %208 = load i32, i32* %5, align 4
  %209 = call i32 @WREG32(i32 %207, i32 %208)
  %210 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @RS600_MSI_REARM, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @WREG32(i32 %210, i32 %213)
  br label %219

215:                                              ; preds = %197
  %216 = load i32, i32* @RADEON_MSI_REARM_EN, align 4
  %217 = load i32, i32* @RV370_MSI_REARM_EN, align 4
  %218 = call i32 @WREG32(i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %201
  br label %220

220:                                              ; preds = %219, %192
  %221 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %220, %28
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i32 @rs600_irq_ack(%struct.radeon_device*) #1

declare dso_local i64 @G_000044_SW_INT(i32) #1

declare dso_local i32 @radeon_fence_process(%struct.radeon_device*, i32) #1

declare dso_local i64 @G_007EDC_LB_D1_VBLANK_INTERRUPT(i64) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @radeon_crtc_handle_vblank(%struct.radeon_device*, i32) #1

declare dso_local i64 @G_007EDC_LB_D2_VBLANK_INTERRUPT(i64) #1

declare dso_local i64 @G_007EDC_DC_HOT_PLUG_DETECT1_INTERRUPT(i64) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @G_007EDC_DC_HOT_PLUG_DETECT2_INTERRUPT(i64) #1

declare dso_local i64 @G_007404_HDMI0_AZ_FORMAT_WTRIG(i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
