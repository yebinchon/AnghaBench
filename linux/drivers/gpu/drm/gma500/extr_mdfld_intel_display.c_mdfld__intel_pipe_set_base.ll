; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld__intel_pipe_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld__intel_pipe_set_base.c"
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

@globle_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pipe = 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Illegal Pipe Number.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DISPPLANE_PIXFORMAT_MASK = common dso_local global i64 0, align 8
@DISPPLANE_8BPP = common dso_local global i64 0, align 8
@DISPPLANE_15_16BPP = common dso_local global i64 0, align 8
@DISPPLANE_16BPP = common dso_local global i64 0, align 8
@DISPPLANE_32BPP_NO_ALPHA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Writing base %08lX %08lX %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*)* @mdfld__intel_pipe_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdfld__intel_pipe_set_base(%struct.drm_crtc* %0, i32 %1, i32 %2, %struct.drm_framebuffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_psb_private*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.gma_crtc*, align 8
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
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %29, align 8
  store %struct.drm_framebuffer* %30, %struct.drm_framebuffer** %12, align 8
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %32 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %31)
  store %struct.gma_crtc* %32, %struct.gma_crtc** %13, align 8
  %33 = load %struct.gma_crtc*, %struct.gma_crtc** %13, align 8
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
  %42 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %43 = call i32 @memcpy(i32* @globle_dev, %struct.drm_device* %42, i32 16)
  %44 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %50 = icmp ne %struct.drm_framebuffer* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %4
  %52 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %186

56:                                               ; preds = %4
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %58 = call i32 @check_fb(%struct.drm_framebuffer* %57)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %19, align 4
  store i32 %62, i32* %5, align 4
  br label %186

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %186

70:                                               ; preds = %63
  %71 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %72 = call i32 @gma_power_begin(%struct.drm_device* %71, i32 1)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %186

75:                                               ; preds = %70
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %77 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_6__* @to_gtt_range(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %16, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %86 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %84, %89
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %93 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %91, %98
  %100 = add nsw i32 %90, %99
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %17, align 8
  %102 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %103 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %106 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = call i32 @REG_WRITE(i32 %104, i64 %110)
  %112 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %113 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @REG_READ(i32 %114)
  store i64 %115, i64* %18, align 8
  %116 = load i64, i64* @DISPPLANE_PIXFORMAT_MASK, align 8
  %117 = xor i64 %116, -1
  %118 = load i64, i64* %18, align 8
  %119 = and i64 %118, %117
  store i64 %119, i64* %18, align 8
  %120 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %121 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 8
  switch i32 %127, label %152 [
    i32 8, label %128
    i32 16, label %132
    i32 24, label %148
    i32 32, label %148
  ]

128:                                              ; preds = %75
  %129 = load i64, i64* @DISPPLANE_8BPP, align 8
  %130 = load i64, i64* %18, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %18, align 8
  br label %152

132:                                              ; preds = %75
  %133 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %134 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 15
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i64, i64* @DISPPLANE_15_16BPP, align 8
  %141 = load i64, i64* %18, align 8
  %142 = or i64 %141, %140
  store i64 %142, i64* %18, align 8
  br label %147

143:                                              ; preds = %132
  %144 = load i64, i64* @DISPPLANE_16BPP, align 8
  %145 = load i64, i64* %18, align 8
  %146 = or i64 %145, %144
  store i64 %146, i64* %18, align 8
  br label %147

147:                                              ; preds = %143, %139
  br label %152

148:                                              ; preds = %75, %75
  %149 = load i64, i64* @DISPPLANE_32BPP_NO_ALPHA, align 8
  %150 = load i64, i64* %18, align 8
  %151 = or i64 %150, %149
  store i64 %151, i64* %18, align 8
  br label %152

152:                                              ; preds = %75, %148, %147, %128
  %153 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %154 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* %18, align 8
  %157 = call i32 @REG_WRITE(i32 %155, i64 %156)
  %158 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %159 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* %16, align 8
  %162 = load i64, i64* %17, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i32, i8*, ...) @dev_dbg(i32 %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %161, i64 %162, i32 %163, i32 %164)
  %166 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %167 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %17, align 8
  %170 = call i32 @REG_WRITE(i32 %168, i64 %169)
  %171 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %172 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @REG_READ(i32 %173)
  %175 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %176 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i64, i64* %16, align 8
  %179 = call i32 @REG_WRITE(i32 %177, i64 %178)
  %180 = load %struct.psb_offset*, %struct.psb_offset** %15, align 8
  %181 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @REG_READ(i32 %182)
  %184 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %185 = call i32 @gma_power_end(%struct.drm_device* %184)
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %152, %74, %66, %61, %51
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @memcpy(i32*, %struct.drm_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @check_fb(%struct.drm_framebuffer*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local %struct.TYPE_6__* @to_gtt_range(i32) #1

declare dso_local i32 @REG_WRITE(i32, i64) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
