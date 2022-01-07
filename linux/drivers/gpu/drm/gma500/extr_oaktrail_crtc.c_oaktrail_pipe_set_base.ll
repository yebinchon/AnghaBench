; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_oaktrail_pipe_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_oaktrail_pipe_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_offset* }
%struct.psb_offset = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.gma_crtc = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@DISPPLANE_PIXFORMAT_MASK = common dso_local global i64 0, align 8
@DISPPLANE_8BPP = common dso_local global i64 0, align 8
@DISPPLANE_15_16BPP = common dso_local global i64 0, align 8
@DISPPLANE_16BPP = common dso_local global i64 0, align 8
@DISPPLANE_32BPP_NO_ALPHA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown color depth\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*)* @oaktrail_pipe_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oaktrail_pipe_set_base(%struct.drm_crtc* %0, i32 %1, i32 %2, %struct.drm_framebuffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_psb_private*, align 8
  %12 = alloca %struct.gma_crtc*, align 8
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.psb_offset*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.drm_framebuffer* %3, %struct.drm_framebuffer** %9, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 1
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %10, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %24, align 8
  store %struct.drm_psb_private* %25, %struct.drm_psb_private** %11, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %27 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %26)
  store %struct.gma_crtc* %27, %struct.gma_crtc** %12, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %31, align 8
  store %struct.drm_framebuffer* %32, %struct.drm_framebuffer** %13, align 8
  %33 = load %struct.gma_crtc*, %struct.gma_crtc** %12, align 8
  %34 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  %37 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %36, i32 0, i32 0
  %38 = load %struct.psb_offset*, %struct.psb_offset** %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %38, i64 %40
  store %struct.psb_offset* %41, %struct.psb_offset** %15, align 8
  store i32 0, i32* %19, align 4
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %43 = icmp ne %struct.drm_framebuffer* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %4
  %45 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

49:                                               ; preds = %4
  %50 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %51 = call i32 @gma_power_begin(%struct.drm_device* %50, i32 1)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %166

54:                                               ; preds = %49
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %56 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_6__* @to_gtt_range(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %16, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %65 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %63, %68
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %72 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %70, %77
  %79 = add nsw i32 %69, %78
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %17, align 8
  %81 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %82 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %85 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @REG_WRITE(i32 %83, i64 %89)
  %91 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %92 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @REG_READ(i32 %93)
  store i64 %94, i64* %18, align 8
  %95 = load i64, i64* @DISPPLANE_PIXFORMAT_MASK, align 8
  %96 = xor i64 %95, -1
  %97 = load i64, i64* %18, align 8
  %98 = and i64 %97, %96
  store i64 %98, i64* %18, align 8
  %99 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %100 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 8
  switch i32 %106, label %131 [
    i32 8, label %107
    i32 16, label %111
    i32 24, label %127
    i32 32, label %127
  ]

107:                                              ; preds = %54
  %108 = load i64, i64* @DISPPLANE_8BPP, align 8
  %109 = load i64, i64* %18, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %18, align 8
  br label %138

111:                                              ; preds = %54
  %112 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %113 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 15
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i64, i64* @DISPPLANE_15_16BPP, align 8
  %120 = load i64, i64* %18, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %18, align 8
  br label %126

122:                                              ; preds = %111
  %123 = load i64, i64* @DISPPLANE_16BPP, align 8
  %124 = load i64, i64* %18, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %18, align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %138

127:                                              ; preds = %54, %54
  %128 = load i64, i64* @DISPPLANE_32BPP_NO_ALPHA, align 8
  %129 = load i64, i64* %18, align 8
  %130 = or i64 %129, %128
  store i64 %130, i64* %18, align 8
  br label %138

131:                                              ; preds = %54
  %132 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %133 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %19, align 4
  br label %162

138:                                              ; preds = %127, %126, %107
  %139 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %140 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %18, align 8
  %143 = call i32 @REG_WRITE(i32 %141, i64 %142)
  %144 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %145 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %17, align 8
  %148 = call i32 @REG_WRITE(i32 %146, i64 %147)
  %149 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %150 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @REG_READ(i32 %151)
  %153 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %154 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* %16, align 8
  %157 = call i32 @REG_WRITE(i32 %155, i64 %156)
  %158 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %159 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @REG_READ(i32 %160)
  br label %162

162:                                              ; preds = %138, %131
  %163 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %164 = call i32 @gma_power_end(%struct.drm_device* %163)
  %165 = load i32, i32* %19, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %162, %53, %44
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local %struct.TYPE_6__* @to_gtt_range(i32) #1

declare dso_local i32 @REG_WRITE(i32, i64) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
