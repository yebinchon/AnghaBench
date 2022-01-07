; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_pipe_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_pipe_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_3__ = type { %struct.drm_framebuffer* }
%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_offset* }
%struct.psb_offset = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.gma_crtc = type { i32 }
%struct.gtt_range = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@DISPPLANE_PIXFORMAT_MASK = common dso_local global i64 0, align 8
@DISPPLANE_8BPP = common dso_local global i64 0, align 8
@DISPPLANE_15_16BPP = common dso_local global i64 0, align 8
@DISPPLANE_16BPP = common dso_local global i64 0, align 8
@DISPPLANE_32BPP_NO_ALPHA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown color depth\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Writing base %08lX %08lX %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gma_pipe_set_base(%struct.drm_crtc* %0, i32 %1, i32 %2, %struct.drm_framebuffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_psb_private*, align 8
  %12 = alloca %struct.gma_crtc*, align 8
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.gtt_range*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.psb_offset*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.drm_framebuffer* %3, %struct.drm_framebuffer** %9, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 1
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %10, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 1
  %26 = load %struct.drm_psb_private*, %struct.drm_psb_private** %25, align 8
  store %struct.drm_psb_private* %26, %struct.drm_psb_private** %11, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %28 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %27)
  store %struct.gma_crtc* %28, %struct.gma_crtc** %12, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %32, align 8
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %13, align 8
  %34 = load %struct.gma_crtc*, %struct.gma_crtc** %12, align 8
  %35 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  %38 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %37, i32 0, i32 0
  %39 = load %struct.psb_offset*, %struct.psb_offset** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %39, i64 %41
  store %struct.psb_offset* %42, %struct.psb_offset** %16, align 8
  store i32 0, i32* %20, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %44 = call i32 @gma_power_begin(%struct.drm_device* %43, i32 1)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %211

47:                                               ; preds = %4
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %49 = icmp ne %struct.drm_framebuffer* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %195

55:                                               ; preds = %47
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %57 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.gtt_range* @to_gtt_range(i32 %60)
  store %struct.gtt_range* %61, %struct.gtt_range** %14, align 8
  %62 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %63 = call i32 @psb_gtt_pin(%struct.gtt_range* %62)
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %207

67:                                               ; preds = %55
  %68 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %69 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %17, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %73 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %71, %76
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %80 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %78, %85
  %87 = add nsw i32 %77, %86
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %18, align 8
  %89 = load %struct.psb_offset*, %struct.psb_offset** %16, align 8
  %90 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %93 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 @REG_WRITE(i32 %91, i64 %97)
  %99 = load %struct.psb_offset*, %struct.psb_offset** %16, align 8
  %100 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @REG_READ(i32 %101)
  store i64 %102, i64* %19, align 8
  %103 = load i64, i64* @DISPPLANE_PIXFORMAT_MASK, align 8
  %104 = xor i64 %103, -1
  %105 = load i64, i64* %19, align 8
  %106 = and i64 %105, %104
  store i64 %106, i64* %19, align 8
  %107 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %108 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 8
  switch i32 %114, label %139 [
    i32 8, label %115
    i32 16, label %119
    i32 24, label %135
    i32 32, label %135
  ]

115:                                              ; preds = %67
  %116 = load i64, i64* @DISPPLANE_8BPP, align 8
  %117 = load i64, i64* %19, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %19, align 8
  br label %146

119:                                              ; preds = %67
  %120 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %121 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 15
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i64, i64* @DISPPLANE_15_16BPP, align 8
  %128 = load i64, i64* %19, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %19, align 8
  br label %134

130:                                              ; preds = %119
  %131 = load i64, i64* @DISPPLANE_16BPP, align 8
  %132 = load i64, i64* %19, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %19, align 8
  br label %134

134:                                              ; preds = %130, %126
  br label %146

135:                                              ; preds = %67, %67
  %136 = load i64, i64* @DISPPLANE_32BPP_NO_ALPHA, align 8
  %137 = load i64, i64* %19, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %19, align 8
  br label %146

139:                                              ; preds = %67
  %140 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %141 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dev_err(i32 %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %20, align 4
  br label %207

146:                                              ; preds = %135, %134, %115
  %147 = load %struct.psb_offset*, %struct.psb_offset** %16, align 8
  %148 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %19, align 8
  %151 = call i32 @REG_WRITE(i32 %149, i64 %150)
  %152 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %153 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* %17, align 8
  %156 = load i64, i64* %18, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @dev_dbg(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %155, i64 %156, i32 %157, i32 %158)
  %160 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %161 = call i64 @IS_PSB(%struct.drm_device* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %146
  %164 = load %struct.psb_offset*, %struct.psb_offset** %16, align 8
  %165 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* %18, align 8
  %168 = load i64, i64* %17, align 8
  %169 = add i64 %167, %168
  %170 = call i32 @REG_WRITE(i32 %166, i64 %169)
  %171 = load %struct.psb_offset*, %struct.psb_offset** %16, align 8
  %172 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @REG_READ(i32 %173)
  br label %194

175:                                              ; preds = %146
  %176 = load %struct.psb_offset*, %struct.psb_offset** %16, align 8
  %177 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i64, i64* %18, align 8
  %180 = call i32 @REG_WRITE(i32 %178, i64 %179)
  %181 = load %struct.psb_offset*, %struct.psb_offset** %16, align 8
  %182 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @REG_READ(i32 %183)
  %185 = load %struct.psb_offset*, %struct.psb_offset** %16, align 8
  %186 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i64, i64* %17, align 8
  %189 = call i32 @REG_WRITE(i32 %187, i64 %188)
  %190 = load %struct.psb_offset*, %struct.psb_offset** %16, align 8
  %191 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @REG_READ(i32 %192)
  br label %194

194:                                              ; preds = %175, %163
  br label %195

195:                                              ; preds = %194, %50
  %196 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %197 = icmp ne %struct.drm_framebuffer* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %200 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call %struct.gtt_range* @to_gtt_range(i32 %203)
  %205 = call i32 @psb_gtt_unpin(%struct.gtt_range* %204)
  br label %206

206:                                              ; preds = %198, %195
  br label %207

207:                                              ; preds = %206, %139, %66
  %208 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %209 = call i32 @gma_power_end(%struct.drm_device* %208)
  %210 = load i32, i32* %20, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %207, %46
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.gtt_range* @to_gtt_range(i32) #1

declare dso_local i32 @psb_gtt_pin(%struct.gtt_range*) #1

declare dso_local i32 @REG_WRITE(i32, i64) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i32, i32) #1

declare dso_local i64 @IS_PSB(%struct.drm_device*) #1

declare dso_local i32 @psb_gtt_unpin(%struct.gtt_range*) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
